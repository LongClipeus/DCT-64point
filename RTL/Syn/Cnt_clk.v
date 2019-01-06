module Cnt_clk
#(
  parameter SIZE_CNT
)
(
  input clk,
  input reset,
  output reg [SIZE_CNT:0]Cnt
);
initial 
begin
 Cnt = 4'b0000;
end
always @(posedge clk)
begin
    Cnt = Cnt+1; 
end
endmodule
