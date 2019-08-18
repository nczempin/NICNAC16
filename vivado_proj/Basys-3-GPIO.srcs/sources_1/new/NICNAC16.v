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
    
   // assign SSEG_AN = 4'b0000;
    //assign SSEG_CA[7] = clk_cpu;
    //assign SSEG_CA[6] = clk_cpu;
    //assign SSEG_CA[5] = clk_cpu;
    //assign SSEG_CA[4] = clk_cpu;
    //assign SSEG_CA[3] = status;
    //assign SSEG_CA[2] = status;
    //assign SSEG_CA[1] = status;
    //assign SSEG_CA[0] = status;
    wire [7:0] in0, in1, in2, in3;
    wire [3:0] an;
    assign an = SSEG_AN;
    assign in0 = 8'b11111001;
    assign in1 = 8'b10100100;
    assign in2 = 8'b10110000;
    assign in3 = 8'b10011001;
     multiplex_sseg sseg_multiplexer(
     .clk(clk_fpga),
     .in0(in0),
     .in1(in1),
     .in2(in2),
     .in3(in3),
     .sseg(SSEG_CA),
     .an(an)
 );
 
    
    assign LED = led_out;
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
