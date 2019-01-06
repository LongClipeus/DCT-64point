module DCT_EVEN
#(
	parameter c1,
	parameter c2,
	parameter c3,
	parameter c4,
	parameter CNT_CLK,
	parameter cu
)
(
	input clk,
	input [3:0] cnt_clk,
	input [23:0] a0, a1, a2, a3, a4, a5, a6, a7,
	output [23:0] c
);
localparam size_cnt = 3;

wire [23:0] w0,w1,w2,w3;
reg [23:0] m0, m1, m2, m3;
reg [23:0] b0, b1, b2, b3;
reg [23:0] d0, d1, d2, d3;


always @(posedge clk)
begin
	if(cnt_clk == CNT_CLK)
	begin
		m0 = a0 + ~a7 + 1'b1;
		m1 = a1 + ~a6 + 1'b1;
		m2 = a2 + ~a5 + 1'b1;
		m3 = a3 + ~a4 + 1'b1;
	end
else if (cnt_clk == CNT_CLK + 1)
	begin
	b0 = m0 * c1;
	b1 = m1 * c2;
	b2 = m2 * c3;
	b3 = m3 * c4;
	end 
	else if(cnt_clk == CNT_CLK + 2)
	begin
		d0 = b0 + b1 + b2 + b3;
		if (d0[23] == 1'b1)
		begin
			d1 = ~d0 + 1'b1;
			d2 = d1 / cu;
			d3 = ~d2 + 1'b1;
		end
		else if(d0[23] == 1'b0)
		begin
			d3 = d0 / cu;
		end
	end
end


assign c = d3;
endmodule 