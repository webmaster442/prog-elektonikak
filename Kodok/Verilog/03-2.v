module demultiplexer(q, in, select);
	input in;
	input [4:0] select;
	output [31:0] q;
	
	wire in;
	wire [4:0] select;
	wire [31:0] q;

	assign q = in << select;
endmodule