module Buffer
#(
  parameter CNT_CLK
)
(
	input clk,
	input [3:0] clk_cnt,
	input [23:0] a0, a1, a2, a3, a4, a5, a6, a7,
	output reg [23:0] o0, o1, o2, o3, o4, o5, o6, o7
);

always@(posedge clk)
begin
	if(clk_cnt == CNT_CLK)
	begin
		o0 = a0;
		o1 = a1;
		o2 = a2;
		o3 = a3;
		o4 = a4;
		o5 = a5;
		o6 = a6;
		o7 = a7;
	end
end
endmodule 