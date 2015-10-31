module vezerles(a, b, c, q1, q2);
	input a, b, c;
	output q1, q2;

	wire a, b, c, q1, q2;

	assign q1 =  (a & b) | (b & ~c) | (~a & ~c) | (~a & ~b);
	assign q2 = a | (b & c);
endmodule