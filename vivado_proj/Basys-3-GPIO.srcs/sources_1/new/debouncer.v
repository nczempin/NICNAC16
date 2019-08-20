`timescale 1ns / 1ps



module debouncer(clk, switch_in, switch_out);
    
    parameter WIDTH = 5;
    parameter CLOCK_FREQUENCY = 100_000_000;
    input clk;
    input [WIDTH-1:0] switch_in;
    output[WIDTH-1:0] switch_out;
    
    
    wire [WIDTH-1:0] synchronized_switch;
    synchronizer sync1(clk, switch_in, synchronized_switch);
    wire sample_pulse;
    wrapping_counter wc(clk, sample_pulse);
    
endmodule

module synchronizer(clk, switch_in, synchronized_switch);
 parameter WIDTH = 5;
     input clk;
    input [WIDTH-1:0] switch_in;
    output reg[WIDTH-1:0] synchronized_switch;
   
   
   reg [WIDTH-1:0] Q;
   always @(posedge clk) begin
   // two registers in one block
      synchronized_switch <= Q;
      Q <= switch_in;
      
   end
				
endmodule

module wrapping_counter(clk, sample_pulse);
    parameter CLOCK_FREQUENCY = 100_000_000;
    parameter SAMPLE_COUNT_MAX = CLOCK_FREQUENCY / 200-1; // one pulse every 500us
   input clk;
    output reg sample_pulse;
    reg [19:0] counter =0; //TODO calculate the bits needed from the params
    always @(posedge clk) begin
      counter <= counter + 1;
      if (counter == SAMPLE_COUNT_MAX)begin
         sample_pulse <= 1;
         counter <= 0;
         end
      else
        sample_pulse <= 0;
   end
endmodule