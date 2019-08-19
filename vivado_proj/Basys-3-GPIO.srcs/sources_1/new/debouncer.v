`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/20/2019 12:45:06 AM
// Design Name: 
// Module Name: debouncer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module debouncer(clk, switch_in, switch_out);
    
    parameter WIDTH = 5;
    parameter CLOCK_FREQUENCY = 100_000_000;
    input clk;
    input [WIDTH-1:0] switch_in;
    output[WIDTH-1:0] switch_out;
    
endmodule
