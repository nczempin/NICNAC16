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


module NICNAC16(
    input  clk_fpga,
    input [15:0] SW,
    input [4:0] BTN,
    output [15:0] LED,
    output [7:0] SSEG_CA,
    output [3:0] SSEG_AN
    );
    parameter MAX_COUNT = 5_000_000 -1;
    wire reset;
    wire counter_en;
    reg [26:0] counter_100M;
    reg [3:0] counter_10;
    
    wire clk_cpu;
    wire [15:0] led_out;
    
    assign SSEG_AN =4'b1011;
    always @ (posedge clk_fpga, posedge reset) begin
       if(reset)
          counter_100M <= 0;
        else if (counter_100M == MAX_COUNT)
           counter_100M = 0;
        else
           counter_100M <= counter_100M + 1'b1;
      end
      
      assign counter_en = counter_100M == 0;
      assign reset = BTN[4];
      always @(posedge clk_fpga, posedge reset)
         if (reset)
            counter_10 <=0;
         else if (counter_en)
            if (counter_10 == 9)
               counter_10 <= 0;
            else 
               counter_10 <= counter_10 + 1'b1;
               
               
        
        assign clk_cpu =  counter_10 < 5;
        assign SSEG_CA[7] = clk_cpu;
        assign LED = led_out;
         dunc16 UUT (
		.clk(clk_cpu), 
		.reset(reset),
		//.pc_out(pc_out),
		//.ac_out(ac_out),
		//.ma_out(ma_out),
		//.MEMORY_READ(MEMORY_READ),
		.led_out(led_out)
   );
endmodule
