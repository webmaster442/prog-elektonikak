module multiplexer(q, data, select);
	output q;
	input [31:0] data;
	input [5:0] select;
	wire q;
	wire [31:0] data;
	wire [5:0] select;

	assign q =
		(select == 5'h00) ? data[0] :
		(select == 5'h01) ? data[1] :
		(select == 5'h02) ? data[2] :
		(select == 5'h03) ? data[3] :
		(select == 5'h04) ? data[4] :
		(select == 5'h05) ? data[5] :
		(select == 5'h06) ? data[6] :
		(select == 5'h07) ? data[7] :
		(select == 5'h08) ? data[8] :
		(select == 5'h09) ? data[9] :
		(select == 5'h0A) ? data[10] :
		(select == 5'h0B) ? data[11] :
		(select == 5'h0C) ? data[12] :
		(select == 5'h0D) ? data[13] :
		(select == 5'h0E) ? data[14] :
		(select == 5'h0F) ? data[15] :
		(select == 5'h10) ? data[16] :
		(select == 5'h11) ? data[17] :
		(select == 5'h12) ? data[18] :
		(select == 5'h13) ? data[19] :
		(select == 5'h14) ? data[20] :
		(select == 5'h15) ? data[21] :
		(select == 5'h16) ? data[22] :
		(select == 5'h17) ? data[23] :
		(select == 5'h18) ? data[24] :
		(select == 5'h19) ? data[25] :
		(select == 5'h1A) ? data[26] :
		(select == 5'h1B) ? data[27] :
		(select == 5'h1C) ? data[28] :
		(select == 5'h1D) ? data[29] :
		(select == 5'h1E) ? data[30] :
		(select == 5'h1F) ? data[31] : 1'bx;
endmodule