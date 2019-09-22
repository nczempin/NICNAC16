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
    input pushbutton
);
     
    
    
 

  wire en_mem_write;
  wire [15:0] mem_read;
  wire [15:0] mem_write;
  wire [15:0] mem_address;

 wire [15:0] led_out;
 wire  status;
 wire t3;
    wire RUN_MODE;
       wire RUN_CY;
 
 
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
         .RUN_CY(RUN_CY)
   );
   Memory romram(
    .clk(clk),
    .en_mem_write(en_mem_write),
    .mem_read(mem_read),
    .mem_write(mem_write),
    .mem_address(mem_address)
    );
    
       wire CONCY1;
       wire CONCY2;
       
   console myconsole(
  .t3(t3),
    .clk(clk),
    .reset(reset),
    .pushbutton(pushbutton),
    .knob_setting(knob_setting),
    .CONCY1(CONCY1),
    .CONCY2(CONCY2),
    .RUN_MODE(RUN_MODE),
    .RUN_CY(RUN_CY)

    ); 
endmodule

