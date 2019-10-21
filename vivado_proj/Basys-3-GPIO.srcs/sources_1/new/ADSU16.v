`timescale 1ns / 1ps
 
module ADSU16(A,B, CO, S);
input A;
 input B;
 output CO;
 output S;
  parameter ADDER_WIDTH = 16;
  wire signed [ADDER_WIDTH-1:0] A;
   wire signed [ADDER_WIDTH-1:0] B;
   wire                   CO;
   wire signed [ADDER_WIDTH-1:0] S;

   assign {CO, S} = A + B;
	
endmodule
