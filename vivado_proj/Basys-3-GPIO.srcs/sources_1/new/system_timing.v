`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/13/2019 04:15:57 PM
// Design Name: 
// Module Name: system_timing
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


module system_timing(reset, clk, icynext, t0, t1, t2, t3, fetch, execute);
    input reset;
    input clk;
    input icynext;
    output t0;
    output t1;
    output t2;
    output t3;
    output fetch;
    output execute;
    
    Stages stages (
    .RESET(reset),
    .CLK(clk),
    .NEW_CYCLE(icynext), //TODO
    .FETCH(fetch),
    .EXECUTE(execute)
    );
endmodule
