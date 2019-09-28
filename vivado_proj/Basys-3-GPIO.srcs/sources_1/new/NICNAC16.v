`timescale 1ns / 1ps
// Basys 3 specific implementation of NICNAC16
 
module NICNAC16(
    input clk_fpga,
    input [15:0] SW,
    input [4:0] BTN,
    output [15:0] LED,
    output [7:0] SSEG_CA,
    output [3:0] SSEG_AN,
    inout [7:0] JA, //TODO change the naming in the .xdc
    inout [7:0] JB, //TODO change the naming in the .xdc
    inout [7:0] JC, //TODO change the naming in the .xdc
    inout [7:0] JXADC //TODO change the naming in the .xdc
    
);
    wire reset; //POR "circuit"
    wire status;
     
    wire clk_cpu;
    wire [15:0] led_out;
    
    assign reset = BTN[4];
    
    wire pushbutton = BTN[0];
    wire [4:0] DEVADDRESS;
    wire [5:0] DEVCTRL;
 
    wire [3:0] sseg_dp;
    assign sseg_dp ={clk_cpu, status, 2'b11}; //TODO find uses for remaning dps

    sseg_interface16b si16(
        .clk(clk_fpga),
        .data(led_out), //TODO
        .decimal_points(sseg_dp),
        .sseg_ca( SSEG_CA),
        .sseg_an( SSEG_AN)
    );
 
    assign LED =led_out;
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
  reg [1:0] knob_setting;
  wire shift_knob;
  wire do_knob;
  assign shift_knob = BTN[1];
  assign do_knob = BTN[3];
  // rotate knob setting when releasing do_knob while shift_knob is pressed
  always @(negedge do_knob) begin
      if (shift_knob) 
         if (knob_setting == 2'b11) 
             knob_setting = 2'b00;
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
    .led_out(led_out),
    .SW(SW)
   );
   
    
endmodule
