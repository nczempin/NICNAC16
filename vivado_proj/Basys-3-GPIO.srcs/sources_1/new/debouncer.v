`timescale 1ns / 1ps



module debouncer(clk, switch_in, switch_out);
    
    parameter CLOCK_FREQUENCY = 100_000_000;
    parameter PULSE_COUNT_MAX = 10_000_000/(CLOCK_FREQUENCY/200);
    input clk;
    input  switch_in;
    output reg switch_out;
    
    wire synchronized_switch;
    synchronizer sync1(clk, switch_in, synchronized_switch);

    wire sample_pulse;
    wrapping_counter wc(clk, sample_pulse);
wire enable;
assign enable = sample_pulse & synchronized_switch;
  
       wire reset;
    assign reset = ~synchronized_switch;
 

     reg [4:0] counter =0; //TODO calculate the bits needed from the params
    always @(posedge clk)
       if (enable) begin
          counter <= counter + 1;
          if (counter == PULSE_COUNT_MAX)begin
              switch_out <= 1;
              counter <= 0;
          end  else
            switch_out <= 0;
       end
       else
          switch_out <= 0;

  
endmodule

module synchronizer(clk, switch_in, synchronized_switch);
      input clk;
    input  switch_in;
    output reg synchronized_switch;
   
   
   reg  Q;
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
    reg [18:0] counter =0; //TODO calculate the bits needed from the params
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