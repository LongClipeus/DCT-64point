module convert(
	input [39:0] I,
	output reg [19:0] O
);

initial
begin
	O[0] = I[12];
	O[1] = I[13];
	O[2] = I[14];
	O[3] = I[15];
	O[4] = I[16];
	O[5] = I[17];
	O[6] = I[18];
	O[7] = I[19];
	O[8] = I[20];
	O[9] = I[21];
	O[10] = I[22];
	O[11] = I[23];
	O[12] = I[24];
	O[13] = I[25];
	O[14] = I[26];
	O[15] = I[27];
	O[16] = I[28];
	O[17] = I[29];
	O[18] = I[30];
	O[19] = I[31];
end
endmodule 