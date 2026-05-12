`timescale 1ns/1ps

module tb_pe_chain_1d;

  localparam int  DATA_W   = 8;
  localparam int  ACC_W    = 2*DATA_W;
  localparam int  NUM_PE   = 4;
  localparam time SIM_TIME = 3000ns;  // 이 시간 동안 랜덤 스트레스

  //==========================================================
  // DUT 포트
  //==========================================================
  logic                     clk;
  logic                     rst_n;
  logic                     clr;
  logic                     en;
  logic [DATA_W-1:0]        in_data;
  logic [DATA_W-1:0]        out_data;
  logic [DATA_W-1:0]        weight [0:NUM_PE-1];

  logic [ACC_W-1:0]         pe_mul     [0:NUM_PE-1];
  logic [ACC_W-1:0]         pe_acc_sum [0:NUM_PE-1];

  pe_chain_1d #(
    .DATA_W (DATA_W),
    .ACC_W  (ACC_W),
    .NUM_PE (NUM_PE)
  ) dut (
    .clk        (clk),
    .rst_n      (rst_n),
    .clr        (clr),
    .en         (en),
    .in_data    (in_data),
    .out_data   (out_data),
    .weight     (weight),
    .pe_mul     (pe_mul),
    .pe_acc_sum (pe_acc_sum)
  );

  //==========================================================
  // Clock / Reset
  //==========================================================
  initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;  // 100MHz
  end

  initial begin
    rst_n   = 1'b0;
    clr     = 1'b0;
    en      = 1'b0;
    in_data = '0;

    // weight 초기화 (예: 1,2,3,4,...)
    for (int wi = 0; wi < NUM_PE; wi++) begin
      weight[wi] = wi + 1;
    end

    #30;
    rst_n = 1'b1;
  end

  //==========================================================
  // Reference Model
  //==========================================================
  // 데이터 파이프라인 모델
  logic [DATA_W-1:0] ref_data_pipe [0:NUM_PE-1];
  logic [DATA_W-1:0] ref_data_pipe_test [0:NUM_PE-1];
  // 각 PE별 누산값
  logic [ACC_W-1:0]  ref_sum       [0:NUM_PE-1];


  // ref 모델: DUT의 data_pipe / 누산 로직과 동일한 개념으로 구현
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      ref_data_pipe_test[0] <= 0;
      ref_data_pipe_test[1] <= 0;
      ref_data_pipe_test[2] <= 0;
      ref_data_pipe_test[3] <= 0;
    end else begin
      ref_data_pipe_test[0] <= in_data;
      ref_data_pipe_test[1] <= ref_data_pipe_test[0];
      ref_data_pipe_test[2] <= ref_data_pipe_test[1];
      ref_data_pipe_test[3] <= ref_data_pipe_test[2];
    end
  end
  generate
  for (genvar i = 0; i < NUM_PE; i++) begin
    if (i==0) begin
      always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
          ref_data_pipe[0] <= 0;
        end else begin
          ref_data_pipe[0] <= in_data;
        end
      end
    end else begin
      always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
          ref_data_pipe[i] <= 0;
        end else begin
          ref_data_pipe[i] <= ref_data_pipe[i-1];
        end
      end      
    end
  end
  endgenerate

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      // 누산 초기화
      for (int i = 0; i < NUM_PE; i++) begin
        ref_sum[i] <= '0;
      end
    end else begin
      // 누산 업데이트
      if (clr) begin
        for (int i = 0; i < NUM_PE; i++) begin
          ref_sum[i] <= '0;
        end
      end else if (en) begin
        for (int i = 0; i < NUM_PE; i++) begin
          ref_sum[i] <= ref_sum[i] + (ref_data_pipe[i] * weight[i]);
        end
      end
      // en=0이면 유지
    end
  end

  //==========================================================
  // Checker (Watchpoint)
  //==========================================================
  int cycles_checked;
  int err_mul_cnt;
  int err_acc_cnt;

  // 기대 mul
  logic [ACC_W-1:0] ref_mul [0:NUM_PE-1];
  generate
    for (genvar i = 0; i < NUM_PE; i++) begin
      assign ref_mul[i] = ref_data_pipe[i] * weight[i];
    end
  endgenerate


  always @(posedge clk) begin
    if (!rst_n) begin
      cycles_checked <= 0;
      err_mul_cnt    <= 0;
      err_acc_cnt    <= 0;
    end else begin
      cycles_checked <= cycles_checked + 1;

      for (int i = 0; i < NUM_PE; i++) begin

        // WP1: mul 비교
        if (pe_mul[i] !== ref_mul[i]) begin
          err_mul_cnt <= err_mul_cnt + 1;
          $display("ERROR! [PE%0d] WP1 MUL mismatch: dut=%0d, ref=%0d, data=%0d, w=%0d, time=%0d ns",
                   i, pe_mul[i], ref_mul[i], ref_data_pipe[i], weight[i], $time);
        end else begin
          $display("PASS!  [PE%0d] WP1 MUL match   : dut=%0d, ref=%0d, time=%0d ns",
                   i, pe_mul[i], ref_mul[i], $time);
        end

        // WP2: acc_sum 비교
        if (pe_acc_sum[i] !== ref_sum[i]) begin
          err_acc_cnt <= err_acc_cnt + 1;
          $display("ERROR! [PE%0d] WP2 ACC_SUM mismatch: dut=%0d, ref=%0d, time=%0d ns",
                   i, pe_acc_sum[i], ref_sum[i], $time);
        end else begin
          $display("PASS!  [PE%0d] WP2 ACC_SUM match   : dut=%0d, ref=%0d, time=%0d ns",
                   i, pe_acc_sum[i], ref_sum[i], $time);
        end
      end
    end
  end

  //==========================================================
  // Time-based Random Stimulus
  //==========================================================
  initial begin
    @(posedge rst_n);
    @(posedge clk);

    $display("[TB] 1D PE Chain Time-based Random Stress START, duration = %0d ns", SIM_TIME);

    fork
      // 랜덤 입력 생성 쓰레드
      begin
        forever begin
          // 랜덤 입력 데이터
          in_data = $urandom_range(0, (1<<DATA_W)-1);

          // en 랜덤
          en = $urandom_range(0, 1);

          // clr는 낮은 확률로 발생 (5%)
          if ($urandom_range(0,99) < 5) begin
            clr = 1'b1;
          end else begin
            clr = 1'b0;
          end

          @(posedge clk);
        end
      end

      // 시간 제한 쓰레드
      begin
        #SIM_TIME;
        disable fork;
      end
    join_any

//    // idle 몇 사이클
//    en      = 1'b0;
//    clr     = 1'b0;
//    in_data = '0;
//    repeat (5) @(posedge clk);

    // Summary
    $display("==================================================");
    $display("[TB] 1D PE Chain Simulation Summary");
    $display("  Simulation time    : %0d ns", SIM_TIME);
    $display("  Cycles checked     : %0d",    cycles_checked);
    $display("  MUL mismatches     : %0d",    err_mul_cnt);
    $display("  ACC_SUM mismatches : %0d",    err_acc_cnt);
    if (err_mul_cnt == 0 && err_acc_cnt == 0) begin
      $display("  RESULT             : PASS");
    end else begin
      $display("  RESULT             : FAIL");
    end
    $display("==================================================");

    $finish;
  end

endmodule