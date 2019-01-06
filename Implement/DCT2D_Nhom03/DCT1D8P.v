module DCT1D8P
#(
  parameter CNT_Clk
)
(
	input clk,
	input [3:0] clk_cnt,
	input [23:0] a0, a1, a2, a3, a4, a5, a6, a7,
	output wire [23:0] o0, o1, o2, o3, o4, o5, o6, o7
);
localparam c0 = 24'b00000000000000000000001, c1 = 24'b00000000000000000000001, c2 = 24'b00000000000000000000001, c3 = 24'b00000000000000000000001; 
localparam c4 = 24'b000000000000000011111011, c5 = 24'b000000000000000011010100, c6 = 24'b000000000000000010001110, c7 = 24'b000000000000000000110001; 
localparam c8 = 24'b000000000000000011101100, c9 = 24'b000000000000000001100001, c10 = 24'b111111111111111110011111, c11 = 24'b111111111111111100010100;
localparam c12 = 24'b000000000000000011010100, c13 = 24'b111111111111111111001111, c14 =24'b111111111111111100000101 , c15 = 24'b111111111111111101110010;
localparam c16 = 24'b000000000000000010110101, c17 = 24'b111111111111111101001011, c18 =24'b000000000000000010110101, c19 =  24'b000000000000000010001110;
localparam c20 = 24'b000000000000000010001110, c21 = 24'b111111111111111100000101, c22 =24'b000000000000000000110001, c23 =  24'b000000000000000011010100;
localparam c24 = 24'b000000000000000001100001, c25 = 24'b111111111111111100010100, c26 =24'b000000000000000011101100, c27 =  24'b111111111111111110011111;
localparam c28 = 24'b000000000000000000110001, c29 = 24'b111111111111111101110010, c30 =24'b000000000000000011010100, c31 =  24'b111111111111111100000101;

localparam cu0 = 3, cu = 512;

wire [23:0] w0, w1, w2, w3, w4, w5, w6, w7;

DCT_ODD #(.c1(c0),.c2(c1),.c3(c2),.c4(c3),.CNT_CLK(CNT_Clk),.cu(cu0)) 
odd0 (.clk(clk),.cnt_clk(clk_cnt),.a0(a0),.a1(a1),
.a2(a2),.a3(a3),.a4(a4),.a5(a5),.a6(a6),.a7(a7),.c(w0));

DCT_EVEN #(.c1(c4),.c2(c5),.c3(c6),.c4(c7),.CNT_CLK(CNT_Clk),.cu(cu)) 
even0 (.clk(clk),.cnt_clk(clk_cnt),.a0(a0),.a1(a1),
.a2(a2),.a3(a3),.a4(a4),.a5(a5),.a6(a6),.a7(a7),.c(w1));
 
DCT_ODD #(.c1(c8),.c2(c9),.c3(c10),.c4(c11),.CNT_CLK(CNT_Clk),.cu(cu)) 
odd1 (.clk(clk),.cnt_clk(clk_cnt),.a0(a0),.a1(a1),
.a2(a2),.a3(a3),.a4(a4),.a5(a5),.a6(a6),.a7(a7),.c(w2));
 
DCT_EVEN #(.c1(c12),.c2(c13),.c3(c14),.c4(c15),.CNT_CLK(CNT_Clk),.cu(cu)) 
even1 (.clk(clk),.cnt_clk(clk_cnt),.a0(a0),.a1(a1),
.a2(a2),.a3(a3),.a4(a4),.a5(a5),.a6(a6),.a7(a7),.c(w3));

DCT_ODD #(.c1(c16),.c2(c17),.c3(c18),.c4(c19),.CNT_CLK(CNT_Clk),.cu(cu)) 
odd2 (.clk(clk),.cnt_clk(clk_cnt),.a0(a0),.a1(a1),
.a2(a2),.a3(a3),.a4(a4),.a5(a5),.a6(a6),.a7(a7),.c(w4));

DCT_EVEN #(.c1(c20),.c2(c21),.c3(c22),.c4(c23),.CNT_CLK(CNT_Clk),.cu(cu)) 
even2 (.clk(clk),.cnt_clk(clk_cnt),.a0(a0),.a1(a1),
.a2(a2),.a3(a3),.a4(a4),.a5(a5),.a6(a6),.a7(a7),.c(w5));
 
DCT_ODD #(.c1(c24),.c2(c25),.c3(c26),.c4(c27),.CNT_CLK(CNT_Clk),.cu(cu)) 
odd3 (.clk(clk),.cnt_clk(clk_cnt),.a0(a0),.a1(a1),
.a2(a2),.a3(a3),.a4(a4),.a5(a5),.a6(a6),.a7(a7),.c(w6));

DCT_EVEN #(.c1(c28),.c2(c29),.c3(c30),.c4(c31),.CNT_CLK(CNT_Clk),.cu(cu)) 
even3 (.clk(clk),.cnt_clk(clk_cnt),.a0(a0),.a1(a1),
.a2(a2),.a3(a3),.a4(a4),.a5(a5),.a6(a6),.a7(a7),.c(w7));

assign o0 = w0;
assign o1 = w1;
assign o2 = w2;
assign o3 = w3;
assign o4 = w4;
assign o5 = w5;
assign o6 = w6;
assign o7 = w7;
endmodule
