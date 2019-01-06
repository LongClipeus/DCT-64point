module DCT1D
#(
  parameter CNT_CLK
)
(
	input clk,
	input [3:0] clk_cnt,
	input [23:0] a0,a1,a2,a3,a4,a5,a6,a7,
	input [23:0] a8,a9,a10,a11,a12,a13,a14,a15,
	input [23:0] a16,a17,a18,a19,a20,a21,a22,a23,
	input [23:0] a24,a25,a26,a27,a28,a29,a30,a31,
	input [23:0] a32,a33,a34,a35,a36,a37,a38,a39,
	input [23:0] a40,a41,a42,a43,a44,a45,a46,a47,
	input [23:0] a48,a49,a50,a51,a52,a53,a54,a55,
	input [23:0] a56,a57,a58,a59,a60,a61,a62,a63,
	output wire [23:0] o0,o1,o2,o3,o4,o5,o6,o7,
	output wire [23:0] o8,o9,o10,o11,o12,o13,o14,o15,
	output wire [23:0] o16,o17,o18,o19,o20,o21,o22,o23,
	output wire [23:0] o24,o25,o26,o27,o28,o29,o30,o31,
	output wire [23:0] o32,o33,o34,o35,o36,o37,o38,o39,
	output wire [23:0] o40,o41,o42,o43,o44,o45,o46,o47,
	output wire [23:0] o48,o49,o50,o51,o52,o53,o54,o55,
	output wire [23:0] o56,o57,o58,o59,o60,o61,o62,o63
);

wire [23:0] w0,w1,w2,w3,w4,w5,w6,w7;
wire [23:0] w8,w9,w10,w11,w12,w13,w14,w15;
wire [23:0] w16,w17,w18,w19,w20,w21,w22,w23;
wire [23:0] w24,w25,w26,w27,w28,w29,w30,w31;
wire [23:0] w32,w33,w34,w35,w36,w37,w38,w39;
wire [23:0] w40,w41,w42,w43,w44,w45,w46,w47;
wire [23:0] w48,w49,w50,w51,w52,w53,w54,w55;
wire [23:0] w56,w57,w58,w59,w60,w61,w62,w63;

DCT1D8P #(.CNT_Clk(CNT_CLK)) D1 (.clk(clk),.clk_cnt(clk_cnt),.a0(a0),.a1(a1),.a2(a2),.a3(a3),.a4(a4),.a5(a5),.a6(a6),.a7(a7),
.o0(w0),.o1(w1),.o2(w2),.o3(w3),.o4(w4),.o5(w5),.o6(w6),.o7(w7));

DCT1D8P #(.CNT_Clk(CNT_CLK)) D2 (.clk(clk),.clk_cnt(clk_cnt),.a0(a8),.a1(a9),.a2(a10),.a3(a11),.a4(a12),.a5(a13),.a6(a14),.a7(a15),
.o0(w8),.o1(w9),.o2(w10),.o3(w11),.o4(w12),.o5(w13),.o6(w14),.o7(w15));

DCT1D8P #(.CNT_Clk(CNT_CLK)) D3 (.clk(clk),.clk_cnt(clk_cnt),.a0(a16),.a1(a17),.a2(a18),.a3(a19),.a4(a20),.a5(a21),.a6(a22),.a7(a23),
.o0(w16),.o1(w17),.o2(w18),.o3(w19),.o4(w20),.o5(w21),.o6(w22),.o7(w23));

DCT1D8P #(.CNT_Clk(CNT_CLK)) D4 (.clk(clk),.clk_cnt(clk_cnt),.a0(a24),.a1(a25),.a2(a26),.a3(a27),.a4(a28),.a5(a29),.a6(a30),.a7(a31),
.o0(w24),.o1(w25),.o2(w26),.o3(w27),.o4(w28),.o5(w29),.o6(w30),.o7(w31));

DCT1D8P #(.CNT_Clk(CNT_CLK)) D5 (.clk(clk),.clk_cnt(clk_cnt),.a0(a32),.a1(a33),.a2(a34),.a3(a35),.a4(a36),.a5(a37),.a6(a38),.a7(a39),
.o0(w32),.o1(w33),.o2(w34),.o3(w35),.o4(w36),.o5(w37),.o6(w38),.o7(w39));

DCT1D8P #(.CNT_Clk(CNT_CLK)) D6 (.clk(clk),.clk_cnt(clk_cnt),.a0(a40),.a1(a41),.a2(a42),.a3(a43),.a4(a44),.a5(a45),.a6(a46),.a7(a47),
.o0(w40),.o1(w41),.o2(w42),.o3(w43),.o4(w44),.o5(w45),.o6(w46),.o7(w47));

DCT1D8P #(.CNT_Clk(CNT_CLK)) D7 (.clk(clk),.clk_cnt(clk_cnt),.a0(a48),.a1(a49),.a2(a50),.a3(a51),.a4(a52),.a5(a53),.a6(a54),.a7(a55),
.o0(w48),.o1(w49),.o2(w50),.o3(w51),.o4(w52),.o5(w53),.o6(w54),.o7(w55));

DCT1D8P #(.CNT_Clk(CNT_CLK)) D8 (.clk(clk),.clk_cnt(clk_cnt),.a0(a56),.a1(a57),.a2(a58),.a3(a59),.a4(a60),.a5(a61),.a6(a62),.a7(a63),
.o0(w56),.o1(w57),.o2(w58),.o3(w59),.o4(w60),.o5(w61),.o6(w62),.o7(w63));

Buffer  #(.CNT_CLK(CNT_CLK+3)) B1 (.clk(clk),.clk_cnt(clk_cnt),.a0(w0),.a1(w1),.a2(w2),.a3(w3),.a4(w4),.a5(w5),.a6(w6),.a7(w7),
.o0(o0),.o1(o8),.o2(o16),.o3(o24),.o4(o32),.o5(o40),.o6(o48),.o7(o56));

Buffer  #(.CNT_CLK(CNT_CLK+3)) B2 (.clk(clk),.clk_cnt(clk_cnt),.a0(w8),.a1(w9),.a2(w10),.a3(w11),.a4(w12),.a5(w13),.a6(w14),.a7(w15),
.o0(o1),.o1(o9),.o2(o17),.o3(o25),.o4(o33),.o5(o41),.o6(o49),.o7(o57));

Buffer  #(.CNT_CLK(CNT_CLK+3)) B3 (.clk(clk),.clk_cnt(clk_cnt),.a0(w16),.a1(w17),.a2(w18),.a3(w19),.a4(w20),.a5(w21),.a6(w22),.a7(w23),
.o0(o2),.o1(o10),.o2(o18),.o3(o26),.o4(o34),.o5(o42),.o6(o50),.o7(o58));

Buffer  #(.CNT_CLK(CNT_CLK+3)) B4 (.clk(clk),.clk_cnt(clk_cnt),.a0(w24),.a1(w25),.a2(w26),.a3(w27),.a4(w28),.a5(w29),.a6(w30),.a7(w31),
.o0(o3),.o1(o11),.o2(o19),.o3(o27),.o4(o35),.o5(o43),.o6(o51),.o7(o59));

Buffer  #(.CNT_CLK(CNT_CLK+3)) B5 (.clk(clk),.clk_cnt(clk_cnt),.a0(w32),.a1(w33),.a2(w34),.a3(w35),.a4(w36),.a5(w37),.a6(w38),.a7(w39),
.o0(o4),.o1(o12),.o2(o20),.o3(o28),.o4(o36),.o5(o44),.o6(o52),.o7(o60));

Buffer  #(.CNT_CLK(CNT_CLK+3)) B6 (.clk(clk),.clk_cnt(clk_cnt),.a0(w40),.a1(w41),.a2(w42),.a3(w43),.a4(w44),.a5(w45),.a6(w46),.a7(w47),
.o0(o5),.o1(o13),.o2(o21),.o3(o29),.o4(o37),.o5(o45),.o6(o53),.o7(o61));

Buffer  #(.CNT_CLK(CNT_CLK+3)) B7 (.clk(clk),.clk_cnt(clk_cnt),.a0(w48),.a1(w49),.a2(w50),.a3(w51),.a4(w52),.a5(w53),.a6(w54),.a7(w55),
.o0(o6),.o1(o14),.o2(o22),.o3(o30),.o4(o38),.o5(o46),.o6(o54),.o7(o62));

Buffer  #(.CNT_CLK(CNT_CLK+3)) B8 (.clk(clk),.clk_cnt(clk_cnt),.a0(w56),.a1(w57),.a2(w58),.a3(w59),.a4(w60),.a5(w61),.a6(w62),.a7(w63),
.o0(o7),.o1(o15),.o2(o23),.o3(o31),.o4(o39),.o5(o47),.o6(o55),.o7(o63));

endmodule 