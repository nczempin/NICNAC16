`timescale 1ns / 1ps

module compi(
    input clk,
    input reset,
    inout [15:0] IODATA_BUS,
    output [4:0] DEVADDRESS,
    output [5:0] DEVCTRL,
    output OUTP,
    output INP,
    input [1:0] knob_setting,
    input pushbutton,
    output [15:0] led_out,
    input [15:0] SW,
    input CONCY1,
    input CONCY2
);
     
    
    
 

  wire en_mem_write;
  wire [15:0] mem_read;
  wire [15:0] mem_write;
  wire [15:0] mem_address;

   wire  status;
   wire t3;
   wire RUN_MODE;
   wire RUN_CY;
   wire LOAD_SW, WRITE_SW, READ_SW, RUN_SW;
 
 
    dunc16 mycpu (
        .clk(clk), 
        .reset(reset),
         .led_out(led_out),
        .status(status),
        .en_mem_write(en_mem_write),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .mem_address(mem_address),
        .IODATA_BUS(IODATA_BUS),
        .DEVADDRESS(DEVADDRESS),
         .DEVCTRL(DEVCTRL),
         .OUTP(OUTP),
         .INP(INP),
         .t3(t3),
         .RUN_MODE(RUN_MODE),
         .RUN_CY(RUN_CY),
         .pushbutton(pushbutton),
         .LOAD_SW(LOAD_SW),
         .WRITE_SW(WRITE_SW),
         .READ_SW(READ_SW),
         .RUN_SW(RUN_SW),
         .SW(SW),
         .CONCY1(CONCY1),
         .CONCY2(CONCY2)
   );
   Memory romram(
    .clk(clk),
    .en_mem_write(en_mem_write),
    .mem_read(mem_read),
    .mem_write(mem_write),
    .mem_address(mem_address)
    );
 
   console myconsole(
  .t3(t3),
    .clk(clk),
    .reset(reset),
    .pushbutton(pushbutton),
    .knob_setting(knob_setting),
  
    .RUN_MODE(RUN_MODE),
    .RUN_CY(RUN_CY),
    .LOAD_SW(LOAD_SW),
    .WRITE_SW(WRITE_SW),
     .READ_SW(READ_SW),
      .RUN_SW(RUN_SW),
      .CONCY1(CONCY1),
    .CONCY2(CONCY2)

    ); 
endmodule

