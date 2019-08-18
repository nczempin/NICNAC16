`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2019 06:48:56 PM
// Design Name: 
// Module Name: NICNAC16
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module clock_divider(clk_in, reset, clk_out);
   parameter MAX_COUNT = 2_000_000 -1;
    input clk_in;
    input reset;
    output clk_out;
    wire counter_en;
    reg [26:0] counter_big;
    reg [3:0] counter_10;

 assign counter_en = counter_big == 0;

   always @ (posedge clk_in, posedge reset) begin
   if(reset)
      counter_big <= 0;
    else if (counter_big == MAX_COUNT)
       counter_big <= 0;
    else
       counter_big <= counter_big + 1'b1;
  end
  
    always @(posedge clk_in, posedge reset) begin
     if (reset)
        counter_10 <=0;
     else if (counter_en)
        if (counter_10 == 9)
           counter_10 <= 0;
        else 
           counter_10 <= counter_10 + 1'b1;
     end
           
           
           
    assign clk_out =  counter_10 < 5;

    
endmodule

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

    clock_divider cd(
        .clk_in(clk_fpga),
        .reset(reset),
        .clk_out(clk_cpu)
     );

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
