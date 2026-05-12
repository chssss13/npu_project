//============================================================
// 2단계: 1D PE Chain
// - 단일 입력 스트림(in_data)이 NUM_PE개의 mac_pe를 통과
// - 각 PE는 고유 weight를 가지고 MAC 누산 수행
//============================================================
module pe_chain_1d #(
  parameter int DATA_W = 8,
  parameter int ACC_W  = 2*DATA_W,
  parameter int NUM_PE = 4
)(
  input                       clk,
  input                       rst_n,

  input                       clr,       // 전체 누산 초기화
  input                       en,        // 전체 누산 enable

  input   [DATA_W-1:0]        in_data,
  output  [DATA_W-1:0]        out_data,

  // 각 PE별 weight 입력 (TB에서 세팅)
  input   [DATA_W-1:0]        weight [0:NUM_PE-1],

  // Watchpoint용 출력 (mul/acc_sum 모니터)
  output  [ACC_W-1:0]         pe_mul     [0:NUM_PE-1],
  output  [ACC_W-1:0]         pe_acc_sum [0:NUM_PE-1]
);

  // 데이터 파이프라인: data_pipe[0]은 in_data, 마지막이 out_data
  reg [DATA_W-1:0] data_pipe [0:NUM_PE-1];

  assign out_data     = data_pipe[NUM_PE-1];

  // 데이터 파이프라인 레지스터
  generate
  for (genvar i = 0; i < NUM_PE; i++) begin
    if (i==0) begin
      always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
          data_pipe[i] <= 0;
        end 
        else begin
          data_pipe[0] <= in_data;
        end
      end
    end else begin
      always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
          data_pipe[i] <= 0;
        end 
        else begin
          data_pipe[i] <= data_pipe[i-1];
        end
      end      
    end
  end
  endgenerate

  // 각 stage에 mac_pe 인스턴스
  generate
  for (genvar i = 0; i < NUM_PE; i++) begin
    mac_pe #(
      .DATA_W (DATA_W),
      .ACC_W  (ACC_W)
    ) u_mac_pe (
      .clk     (clk),
      .rst_n   (rst_n),
      .clr     (clr),
      .en      (en),
      .a       (data_pipe[i]),
      .b       (weight[i]),
      .mul     (pe_mul[i]),
      .acc_sum (pe_acc_sum[i])
    );
  end
  endgenerate

endmodule