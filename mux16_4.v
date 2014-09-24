`timescale 1ns / 1ps
module mux16_4 (A, B, C, D, SEL, OUT);

	input [15:0] A;
	input [15:0] B;
	input [15:0] C;
	input [15:0] D;
	input [1:0] SEL;
	output [15:0] OUT;
	reg [15:0] OUT;
	
always  @ (A or B or C or D or SEL) begin
	case (SEL)
		0: OUT <= A;
		1: OUT <= B;
		2: OUT <= C;
		3: OUT <= D;
	endcase
end
endmodule

