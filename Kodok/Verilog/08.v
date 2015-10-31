module binaris(clk, reset, q)
	input clk, reset;

	wire clk, reset
	otuput q;

	reg q[7:0] q;

	always @(posedge clk or posedge reset)
	begin
		if (reset) q <= 8'b0000_0000;
		else q <= q + 1'b1;
	end

endmodule

module binarisp(clk, reset, lep, elore, q)
	input clk, reset, elore;
	input [7:0] lep;

	wire clk, reset, elore;
	wire [7:0] lep;
	otuput q;

	reg q[7:0] q;

	always @(posedge clk or posedge reset)
	begin
		if (reset) q <= 8'b0000_0000;
		else if (elore == 1'b1) q <= q + lep;
		else q <= q – lep;
	end

endmodule