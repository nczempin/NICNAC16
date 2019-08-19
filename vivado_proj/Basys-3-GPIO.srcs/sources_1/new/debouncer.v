`timescale 1ns / 1ps



module debouncer(clk, switch_in, switch_out);
    
    parameter WIDTH = 5;
    parameter CLOCK_FREQUENCY = 100_000_000;
    input clk;
    input [WIDTH-1:0] switch_in;
    output[WIDTH-1:0] switch_out;
    
    
    wire [WIDTH-1:0] synchronized_switch;
    synchronizer sync1(clk, switch_in, synchronized_switch);
    
endmodule

module synchronizer(clk, switch_in, synchronized_switch);
 parameter WIDTH = 5;
    parameter CLOCK_FREQUENCY = 100_000_000;
    input clk;
    input [WIDTH-1:0] switch_in;
    output reg[WIDTH-1:0] synchronized_switch;
   
   
   reg [WIDTH-1:0] Q;
   always @(posedge clk) begin
      synchronized_switch <= Q;
      Q <= switch_in;
      
   end
				
endmodule