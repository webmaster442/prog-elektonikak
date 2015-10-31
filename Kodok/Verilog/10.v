module teljes(clk, tekercsek)
	input clk;
	output tekercsek;
	wire [3:0] tekercsek;
	reg [2:0] temp;

	always @(posedge clk)
	begin
		temp <= temp + 1;
		if (temp > 3'b100) temp = 3'b000;

		assign tekercsek =
			(temp == 3'b000) ? 4'b0001 :
			(temp == 3'b001) ? 4'b0010 :
			(temp == 3'b011) ? 4'b0100 :
			(temp == 3'b100) ? 4'b1000 : 4'b0000;
	end

endmodule

module turbo(clk, tekercsek)
	input clk;
	output tekercsek;
	wire [3:0] tekercsek;
	reg [2:0] temp;

	always @(posedge clk)
	begin
		temp <= temp + 1;
		if (temp > 3'b100) temp = 3'b000;
		
		assign tekercsek =
			(temp == 3'b000) ? 4'b0011 :
			(temp == 3'b001) ? 4'b0110 :
			(temp == 3'b011) ? 4'b1100 :
			(temp == 3'b100) ? 4'b1001 : 4'b0000;
	end

endmodule

module pontos(clk, tekercsek)
	input clk;
	output tekercsek;
	wire [3:0] tekercsek;
	reg [2:0] temp;

	always @(posedge clk)
	begin
		temp <= temp + 1;

		assign tekercsek =
			(temp == 3'b000) ? 4'b0001 :
			(temp == 3'b001) ? 4'b0011 :
			(temp == 3'b010) ? 4'b0010 :
			(temp == 3'b011) ? 4'b0110 :
			(temp == 3'b100) ? 4'b0100 :
			(temp == 3'b101) ? 4'b1100 :
			(temp == 3'b110) ? 4'b1000 :
			(temp == 3'b111) ? 4'b1001 : 4'b0000;
	end

endmodule