`timescale 1ns / 1ps

 

module NICNAC16(
    input clk_fpga,
    input [15:0] SW,
    input [4:0] BTN,
    output [15:0] LED,
    output [7:0] SSEG_CA,
    output [3:0] SSEG_AN
);
    wire reset;
    wire status;
     
    wire clk_cpu;
    wire [15:0] led_out;
    
    assign reset = BTN[4];
    
   
//     wire [3:0] an;
//    assign an = SSEG_AN;
    
    //wire [15:0] sseg_in;
 //   assign sseg_in = 16'hdeaf;//led_out;
   //assign sseg_in = led_out;
    wire [3:0] sseg_dp;
    assign sseg_dp = 4'b1111;
    sseg_interface16b si16(
    .clk(clk_fpga),
    .data(led_out),
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
    assign clk_cpu = cd_out;
    dunc16 mycpu (
        .clk(clk_cpu), 
        .reset(reset),
        //.pc_out(pc_out),
        //.ac_out(ac_out),
        //.ma_out(ma_out),
    
        .led_out(led_out),
        .status(status)
  );
endmodule
