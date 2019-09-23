`timescale 1ns / 1ps
module pulser(pulser, clk, o);
   input pulser;
   input clk;
   output o;
   
   wire o1;
   d_ff_sc input_ff (
      .d(1'b1),
      .o(o1),
      .clr(~o),
      .clk(pulser)
    );
    
    d_ff output_ff (
      .d(o1),
      .o(o),
      .clr(1'b1),
      .clk(clk)
    );
   
endmodule