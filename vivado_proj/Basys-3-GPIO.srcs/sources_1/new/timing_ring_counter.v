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

module four_bit_ring_counter (
      input clock,
      input reset,
  output [3:0] q
    );
 
  reg[3:0] a;
 
    always @(posedge clock)
      if (reset)
        a = 4'b0001;
 
      else
        begin
        a <=  a<<1; // Notice the blocking assignment
        a[0]<=a[3];
        end
 
    assign q = a;
 
  endmodule
  
  
module timing_ring_counter(clk, icynext, t0, t1, t2, t3, new_cycle);
    input clk;
    input icynext;
    output t0;
    output t1;
    output t2;
    output t3;
    output new_cycle;
    
    
    wire [3:0] t;
//    assign t[0] = t0;
//    assign t[1] = t1;
//    assign t[2] = t2;
//    assign t[3] = t3;
    
    assign t0 = t[0];
    assign t1 = t[1];
    assign t2 = t[2];
    assign t3 = t[3];
    four_bit_ring_counter fbrc (
    .clock(clk),
    .reset(new_cycle),
    .q(t)
    );
    
    
//    wire nt0, nt1, nt2, nt3;
//    wire i0, i1, i2, i3;
//    wire o0, o1, o2, o3;
//    wire ENABLE_NEXT;
    
//    delay delay0(ENABLE_NEXT,i0, clk, o0, t0, nt0);
//    delay delay1(ENABLE_NEXT,i1, clk, o1, t1, nt1);
//    delay delay2(ENABLE_NEXT,i2, clk, o2, t2, nt2);
//    delay delay3(ENABLE_NEXT,i3, clk, o3, t3, nt3);
    
    assign new_cycle = icynext |(~t0 & ~t1 & ~t2);
//    assign ENABLE_NEXT = ~icynext;
//    assign i0 = new_cycle;
//    assign i1 = o0;
//    assign i2 = o1;
//    assign i3 = o2;
    
    
    
endmodule
