module SRL (s, r, q, notq)

	input s, r;
	output q, notq;

	wire s, r;
	reg q;
	reg notq;

	always @(posedge s or posedge r)
	begin
		if (s == 1'b1) q <= 1'b1;
		if (r == 1'b1) q <= 1'b0;
		notq <= ~q;
	end

endmodule

module SRCL (clk, s, r, q, notq)

	input clk, s, r;
	output q, notq;

	wire clk, s, r;
	reg q;
	reg notq;

	always @(posedge clk)
	begin
		if (s == 1'b1) q <= 1'b1;
		if (r == 1'b1) q <= 1'b0;
		notq <= ~q;
	end

endmodule

module JKL(clk, j, k, q, notq)

	input clk, j, k;
	output q, notq;
	wire clk, j, k;
	reg q;
	reg notq;
	
	always @(posedge clk)
	begin
		if (j == 1'b1 && k == 1'b0) q <= 1;
		else if (j == 1'b0 && k == 1'b1) q <= 0;
		else if (j == 1'b1 && k == 1'b1) q <= ~q;
		notq <= ~q;
	end

endmodule

module DL(clk, d, q, notq)

	input clk, d;
	output q, notq;
	wire clk, d;
	reg q;
	reg notq;

	always @(posedge clk)
	begin
		q <= d;
		notq <= ~q;
	end

endmodule