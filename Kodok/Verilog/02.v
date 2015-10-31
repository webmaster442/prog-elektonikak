module bin2hetszegmens(input_bin, output_segments);
	input [3:0] input_bin;
	output [6:0] output_segments;

	wire [3:0] input_bin
	wire [6:0] output_segments;

	assign output_segments =
		(input_bin == 4'h0) ? 7'h7E :
		(input_bin == 4'h1) ? 7'h30 :
		(input_bin == 4'h2) ? 7'h6D :
		(input_bin == 4'h3) ? 7'h79 :
		(input_bin == 4'h4) ? 7'h33 :
		(input_bin == 4'h5) ? 7'h5B :
		(input_bin == 4'h6) ? 7'h5F :
		(input_bin == 4'h7) ? 7'h70 :
		(input_bin == 4'h8) ? 7'h7F :
		(input_bin == 4'h9) ? 7'h7B :
		(input_bin == 4'hA) ? 7'h77 :
		(input_bin == 4'hB) ? 7'h1F :
		(input_bin == 4'hC) ? 7'h4E :
		(input_bin == 4'hD) ? 7'h3D :
		(input_bin == 4'hE) ? 7'h4F :
		(input_bin == 4'hF) ? 7'h47 : 7'bxxxxxxx;

endmodule;