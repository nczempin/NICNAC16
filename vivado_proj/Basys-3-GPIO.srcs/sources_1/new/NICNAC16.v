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
    
    assign SSEG_AN = 4'b0000;
    assign SSEG_CA[7] = clk_cpu;
    //assign SSEG_CA[6] = clk_cpu;
    //assign SSEG_CA[5] = clk_cpu;
    //assign SSEG_CA[4] = clk_cpu;
    //assign SSEG_CA[3] = status;
    //assign SSEG_CA[2] = status;
    //assign SSEG_CA[1] = status;
    assign SSEG_CA[0] = status;
    
    assign LED = led_out;

//    clock_divider cd(
//        .clk_in(clk_fpga),
//        .reset(reset),
//        .clk_out(clk_cpu)
//     );
    assign clk_cpu = clk_fpga;
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
