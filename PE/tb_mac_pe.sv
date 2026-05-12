`timescale 1ns/1ps

module tb_mac_pe;

  localparam int  DATA_W   = 8;
  localparam int  ACC_W    = 2*DATA_W;
  localparam time SIM_TIME = 2000ns;  // 이 시간 동안 랜덤 입력 쏴주고 종료

  logic                  clk;
  logic                  rst_n;
  logic                  clr;
  logic                  en;
  logic [DATA_W-1:0]     a;
  logic [DATA_W-1:0]     b;
  logic [ACC_W-1:0]      mul;
  logic [ACC_W-1:0]      acc_sum;

  mac_pe #(
    .DATA_W (DATA_W),
    .ACC_W  (ACC_W)
  ) dut (
    .clk     (clk),
    .rst_n   (rst_n),
    .clr     (clr),
    .en      (en),
    .a       (a),
    .b       (b),
    .mul     (mul),
    .acc_sum (acc_sum)
  );

  //==========================================================
  // Clock / Reset
  //==========================================================
  initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;  // 100MHz
  end

  initial begin
    rst_n = 1'b0;
    clr   = 1'b0;
    en    = 1'b0;
    a     = '0;
    b     = '0;

    #30;
    rst_n = 1'b1;
  end

  //==========================================================
  // Reference Model & Checker (Watchpoint)
  //==========================================================
  logic [ACC_W-1:0] ref_mul;
  logic [ACC_W-1:0] ref_sum;

  int cycles_checked;
  int err_mul_cnt;
  int err_acc_cnt;

  // ref model: DUT와 동일한 동작을 testbench 안에서 구현
  assign ref_mul = a * b; //always -> assign (data-mismatch debugging point)

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      ref_sum <= '0;
    end else begin
      if (clr) begin
        ref_sum <= '0;
      end else if (en) begin
        ref_sum <= ref_sum + ref_mul;
      end
      // en=0이면 유지
    end
  end

  // Checker: DUT vs ref 비교
  always_ff @(posedge clk) begin
    if (!rst_n) begin
      cycles_checked <= 0;
      err_mul_cnt    <= 0;
      err_acc_cnt    <= 0;
    end else begin
      cycles_checked++;

      // WP1: mul 비교
      if (mul !== ref_mul) begin
        err_mul_cnt++;
        $display("ERROR! WP1 MUL mismatch: dut=%0d, ref=%0d, time=%0d ns",
                 mul, ref_mul, $time);
      end else begin
        $display("PASS!  WP1 MUL match   : dut=%0d, ref=%0d, time=%0d ns",
                 mul, ref_mul, $time);
      end

      // WP2: acc_sum 비교
      if (acc_sum !== ref_sum) begin
        err_acc_cnt++;
        $display("ERROR! WP2 ACC_SUM mismatch: dut=%0d, ref=%0d, time=%0d ns",
                 acc_sum, ref_sum, $time);
      end else begin
        $display("PASS!  WP2 ACC_SUM match   : dut=%0d, ref=%0d, time=%0d ns",
                 acc_sum, ref_sum, $time);
      end
    end
  end

  //==========================================================
  // Time-based Random Stimulus
  //==========================================================
  initial begin
    // 리셋 해제 대기
    @(posedge rst_n);
    @(posedge clk);

    $display("[TB] Time-based Random Stress START, duration = %0d ns", SIM_TIME);

    fork
      // 랜덤 입력 생성 쓰레드
      begin
        forever begin
          // operand 랜덤
          a = $urandom_range(0, (1<<DATA_W)-1); //(1<<8)-1 = 255 (code reuse)
          b = $urandom_range(0, (1<<DATA_W)-1);

          // en 랜덤
          en = $urandom_range(0, 1);

          // clr는 낮은 확률로만 발생 (예: 5%)
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
        disable fork;  // 위 랜덤 쓰레드 종료
      end
    join_any

    // idle 몇 사이클
    en  = 1'b0;
    clr = 1'b0;
    a   = '0;
    b   = '0;
    repeat (5) @(posedge clk);

    //========================================================
    // Summary
    //========================================================
    $display("==================================================");
    $display("[TB] Simulation Summary");
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

