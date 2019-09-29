`timescale 1ns / 1ps
// Basys 3 specific implementation of NICNAC16
 
module NICNAC16(
    input clk,
    input [15:0] sw,
    input btnC,
    input btnU,
    input btnD,
    input btnL,
    input btnR,
   // input [1:0] knob_setting,
   // input pushbutton,
    output [15:0] led,
    output [6:0] seg,
    output dp,
    output [3:0] an,
    inout [7:0] JA, //TODO change the naming in the .xdc
    inout [7:0] JB, //TODO change the naming in the .xdc
    inout [7:0] JC, //TODO change the naming in the .xdc
    inout [7:0] JXADC //TODO change the naming in the .xdc
    
);


    wire reset; //POR "circuit"
    wire status;
     
    wire clk_cpu;
    wire [15:0] led_out;
    wire [4:0]BTN;
assign BTN={btnC, btnU, btnL, btnR, btnD};
  wire [7:0] SSEG_CA;
    assign SSEG_CA = {dp, seg};
    wire [3:0] SSEG_AN;
    assign SSEG_AN = an;
    wire clk_fpga;
    assign clk_fpga = clk;
    
      wire [4:0] btn_debounced;
    debouncer_vhdl 
    #( 
  	.DEBNC_CLOCKS(2), 
  	.PORT_WIDTH(5)
 )  debi (
        .CLK_I(clk),
        .SIGNAL_I(BTN),
        .SIGNAL_O(btn_debounced)
    );
    assign reset = BTN[4];
    
  
    wire pushbutton = btn_debounced[0];
    wire [4:0] DEVADDRESS;
    wire [5:0] DEVCTRL;
 
    wire [3:0] sseg_dp;
   reg [1:0] knob_setting;
  assign sseg_dp ={~pushbutton, status, ~knob_setting};
wire [15:0] sseg_out;
    sseg_interface16b si16(
        .clk(clk_fpga),
        .data(sseg_out), //TODO
        .decimal_points(sseg_dp),
        .sseg_ca( SSEG_CA),
        .sseg_an( SSEG_AN)
    );
 
    assign led =led_out;
    wire cd_out;
    clock_divider cd(
        .clk_in(clk_fpga),
        .reset(reset),
        .clk_out(cd_out)
     );
    assign clk_cpu = clk_fpga;
    wire [15:0] device_out;
    assign device_out = {JA, JB};
    wire device_active; // TODO dp?

   wire [15:0] IODATA_BUS;
   assign IODATA_BUS = device_out;
   
   wire [15:0] DATA_BUS_IN;
   wire [15:0] DATA_BUS_OUT;
   wire INP,OUTP; //TODO need to assign these to DEVCTRL?
  
  // use muxes for the inout lines, so that internally they are either in or out 
   mux16_2 o_mux(
      .A(16'bz),
      .B(DATA_BUS_OUT),
      .SEL(OUTP & ~INP), // presumably INP and OUTP can never be set at the same time, but just making sure
      .OUT(IODATA_BUS)
   );
  mux16_2 i_mux(
      .A(16'bz),
      .B(DATA_BUS_IN),
      .SEL(INP & ~OUTP), // presumably INP and OUTP can never be set at the same time, but just making sure
      .OUT(IODATA_BUS)
   );
      
   
    wire [15:0] latched_data;
   wire shift_knob;
  wire do_knob;
  assign shift_knob = btn_debounced[2];
  assign do_knob = btn_debounced[3];
  // rotate knob setting when releasing do_knob while shift_knob is pressed
  
  always @(*)
        if (reset)
          knob_setting <= 2'b00;
  always @(negedge shift_knob) begin

       //TODO edge detect do_knob
      //if (shift_knob) 
         if (knob_setting == 2'b11) 
             knob_setting <= 2'b00;
         else
             knob_setting <= knob_setting + 1;
  end
  
   compi cnn16(
    .clk(clk_cpu),
    .reset(reset),
    .DATA_BUS_IN(DATA_BUS_IN),
    .DATA_BUS_OUT(DATA_BUS_OUT),
    .DEVADDRESS(DEVADDRESS),
    .DEVCTRL(DEVCTRL),
    .OUTP(OUTP),
    .INP(INP),
    .knob_setting(knob_setting),
    .pushbutton(pushbutton),
    .led_out(led_out),  // TODO these are Basys 3 specific
    .sseg_out(sseg_out),  // TODO these are Basys 3 specific
    .SW(sw)
   );
   
    
endmodule
