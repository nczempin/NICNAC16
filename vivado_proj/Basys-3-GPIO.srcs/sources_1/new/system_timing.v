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


module system_timing(clk, reset, icynext, t0, t1, t2, t3, fetch, execute, new_cycle);
    input clk;
    input reset;
    input icynext;
    output t0;
    output t1;
    output t2;
    output t3;
    output fetch;
    output execute;
    
    output new_cycle;
    timing_ring_counter trc(
    .clk(clk),
    .icynext(icynext),
    .t0(t0),
    .t1(t1),
    .t2(t2),
    .t3(t3),
    .new_cycle(new_cycle)
    );
    Stages stages (
    .RESET(reset),
    .CLK(clk),
    .NEW_CYCLE(new_cycle),
    .FETCH(fetch),
    .EXECUTE(execute)
    );
endmodule
