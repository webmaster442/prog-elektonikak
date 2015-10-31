module ALU(out, op1, op2, code)
	output [7:0] out;
	input [7:0] op1;
	input [7:0] op2;
	input [4:0] code;

	wire [7:0] op1, op2;
	wire [4:0] code;
	reg [7:0] out;

	always @(op1 or op2 or code)
	begin
		case (code)
			4'h0: out = op1 + op2;
			4'h1: out = op1 – op2;
			4'h2: out = op1 * op2;
			4'h3: out = op1 / op2;
			4'h4: out = op1 & op2;
			4'h5: out = op1 | op2;
			4'h6: out = ~op1;
			4'h7: out = ~op2;
			4'h8: out = op1 ^ op2;
			4'h9: out = op1 ~^ op2;
			4'hA: out = op1 ~& op2;
			4'hB: out = op1 ~| op2;
			4'hC: out = op1 << op2;
			4'hD: out = op1 >> out2;
			4'hE: out = op1+1;
			4'hF: out = op1-1;
		endcase
	end
endmodule