`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/13/2019 09:06:18 PM
// Design Name: 
// Module Name: timing_ring_counter
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


module timing_ring_counter(clk, icynext, t0, t1, t2, t3, new_cycle);
    input clk;
    input icynext;
    output t0;
    output t1;
    output t2;
    output t3;
    output new_cycle;
    
    wire nt0, nt1, nt2, nt3;
    wire i0, i1, i2, i3;
    wire o0, o1, o2, o3;
    wire ENABLE_NEXT;
    
    delay delay0(ENABLE_NEXT,i0, clk, o0, t0, nt0);
    delay delay1(ENABLE_NEXT,i1, clk, o1, t1, nt1);
    delay delay2(ENABLE_NEXT,i2, clk, o2, t2, nt2);
    delay delay3(ENABLE_NEXT,i3, clk, o3, t3, nt3);
    
    assign new_cycle = icynext |(nt0 & nt1 & nt2);
    assign ENABLE_NEXT = ~icynext;
    assign i0 = new_cycle;
    assign i1 = o0;
    assign i2 = o1;
    assign i3 = o2;
endmodule
