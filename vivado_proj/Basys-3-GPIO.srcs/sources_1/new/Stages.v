`timescale 1ns / 1ps


module two_bit_ring_counter (
      input clock,
      input reset,
      input enable,
      output [1:0] q
    );
 
  reg[1:0] a;
 
    always @(posedge clock)
      if (reset)
        a = 4'b00;
 
      else
      if (enable)
          case (a)
           2'b00: a <= 2'b01; // happens only on reset
           2'b01: a <= 2'b10;
           2'b10: a <= 2'b01;
           2'b11: a <= 2'b01; // technically, shouldn't happen
        endcase
        // else a=a
 
    assign q = a;
 
  endmodule
 
module Stages(CLK, RESET, NEW_CYCLE, FETCH, EXECUTE);
    input CLK;
    input RESET;
    input NEW_CYCLE;
    output FETCH;
    output EXECUTE;
    
    two_bit_ring_counter tbrc (
    .q({EXECUTE, FETCH}),
    .clock(CLK),
    .reset(RESET),
    .enable(NEW_CYCLE)
    );
    
endmodule
