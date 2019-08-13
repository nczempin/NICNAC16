`timescale 1ns / 1ps
module RAM (
	input  [7:0]ADDRESS,
	input [15:0] IN,
	input WRITE,
	input CLK,


	output [15:0] OUT
);
	 
	reg    [15:0] rom[0:255]; 
	always @(posedge CLK) begin
		if (WRITE) begin
			rom[ADDRESS] <= IN;
		end 
	end
assign OUT = rom[ADDRESS];

endmodule
