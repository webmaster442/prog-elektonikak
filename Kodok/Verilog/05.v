module komparator(a, b, eq, agtb, altb)
	input [7:0] a;
	input [7:0] b;
	output eq;
	output agtb;
	output altb;

	wire [7:0] a, b;
	reg eq, agtb, altb;

	always @(a or b)
	begin
		if (a == b) begin
			eq <= 1'b1;
			agtb <= 1'b0;
			altb <= 1'b0;
		end
		else if (a < b) begin
			eq <= 1'b0;
			agtb <= 1'b0;
			altb <= 1'b1;
		end
		else if (a > b) begin
			eq <= 1'b0;
			agtb <= 1'b1;
			altb <= 1'b0;
		end
	end

endmodule