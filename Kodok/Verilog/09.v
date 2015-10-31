module shift (clk, serial, cpy, paralel);
	input  clk, cpy, serial;
	output [7:0] paralel;

	wire clk, cpy, serial;
	reg [7:0] paralel;
	reg [7:0] tmp; 

	always @(posedge clk) 
	begin
		tmp = {tmp[6:0], SI}; 
	end

	always @(posedge cpy)
	begin
		paralel = tmp;
	end

endmodule 

module shift_paralel (din, clk, load, dout);
	input [7:0] din;
	input clk, load;
	output dout;

	wire clk, load;
	reg dout;
	reg [7:0]temp;

	always @ (posedge clk)
	begin
		if (load) temp <= din;
		else begin
			dout <= temp[7];
			temp <= {temp[6:0],1'b0};
		end
	end

endmodule