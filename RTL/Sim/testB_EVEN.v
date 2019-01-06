module Test_DCT_EVEN();

reg clk;
reg [3:0] cnt_clk;
reg [23:0] a0, a1, a2, a3, a4, a5, a6, a7;
wire [23:0] o0, o1, o2, o3, o4, o5;
localparam c1 = 24'b000000000000000010001110, c2 = 24'b111111111111111100000101, c3 =24'b000000000000000000110001, c4 =  24'b000000000000000011010100;
localparam CNT_Clk = 1;
localparam cu0 = 2.82, cu = 512; 

DCT_EVEN  #(.c1(c1),.c2(c2),.c3(c3),.c4(c4),.CNT_CLK(CNT_Clk),.cu(cu)) tb_DCT_ODD_EVEN(.clk(clk), .cnt_clk(cnt_clk), 
.a0(a0), .a1(a1), .a2(a2), .a3(a3), .a4(a4), .a5(a5), .a6(a6), .a7(a7), 
.c(c)
);

initial
begin
 clk = 1;
 forever  #5 clk = ~clk;
end

initial
begin 
	a0 = 24'b00001000001000000000;//130
	a1 = 24'b00001000010000000000;
	a2 = 24'b00001000010000000000;
	a3 =  24'b00001000000100000000;
	a4 =  24'b00001000010100000000;
	a5 =  24'b00001000010100000000;
	a6 =  24'b00001000011000000000;
	a7 =  24'b00001000011100000000;
	#10;
	cnt_clk = 1;
	#10;
	cnt_clk = 2;
	#10;
	cnt_clk = 3;
end 
endmodule  