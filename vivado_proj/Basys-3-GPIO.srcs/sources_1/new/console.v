`timescale 1ns / 1ps
module console_timing (
    input pushbutton,
    input t3,
    input clk,
    input reset,
    input RUN_MODE,
    output CONCY1,
    output CONCY2
);
wire ff1_out;
wire ff2_out;
wire ff3_out;
assign CONCY1 =ff3_out;
wire ff4_out;
assign CONCY2=ff4_out;
wire clearem;
assign clearem = ~(ff4_out | reset |RUN_MODE);
wire t3_rise;
assign t3_rise = ~(t3&clk);

wire ff1_in;
assign ff1_in = ~pushbutton | ~reset;
   d_ff ff1(
      .d(1),
      .o(ff1_out),
      .clr(clearem),
      .clk(ff1_in) // TODO debounce
   );
   d_ff ff2(
      .d(ff1_out),
      .o(ff2_out),
      .clr(clearem),
      .clk(t3_rise) 
   );
   d_ff ff3(
      .d(ff2_out),
      .o(ff3_out),
      .clr(clearem),
      .clk(t3_rise)
   );
   d_ff ff4(
      .d(ff3_out),
      .o(ff4_out),
      .clk(t3_rise)
   );
   

endmodule
module console(
    input t3,
    input clk,
    input reset,
    input pushbutton,
    output CONCY1,
    output CONCY2,
    input [1:0] knob_setting,
    output RUN_MODE,
    output RUN_CY
    );
    
    
     wire HALT;

    control_knob ck(
    .reset(reset),
    .HALT(HALT),
    .knob_setting(knob_setting),
    .RUN_CY(RUN_CY),
    .RUN_MODE(RUN_MODE),
    .CONCY1(CONCY1)
    );
console_timing ct(
.pushbutton(pushbutton),
    .t3(t3),
    .clk(clk),
    .reset(reset),
    .RUN_MODE(RUN_MODE),
    .CONCY1(CONCY1),
    .CONCY2(CONCY2)
);
endmodule
