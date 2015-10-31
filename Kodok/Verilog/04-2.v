module prioritas_enkoder(q, in);
	input [7:0] in;
	output [3:0] q;
	
	wire [7:0] in;
	reg [3:0] q;

	always @(in)
	begin
		casex (in)
			8'b1xxx_xxxx: q = 3'b111;
			8'bx1xx_xxxx: q = 3'b110;
			8'bxx1x_xxxx: q = 3'b101;
			8'bxxx1_xxxx: q = 3'b100;
			8'bxxxx_1xxx: q = 3'b011;
			8'bxxxx_x1xx: q = 3'b010;
			8'bxxxx_xx1x: q = 3'b001;
			8'bxxxx_xxx1: q = 3'b000;
			default: q = 3'bxxx;
		endcase
	end
endmodule