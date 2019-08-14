`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/14/2019 09:12:04 AM
// Design Name: 
// Module Name: datapath
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


module datapath(
    input clk,
    input reset,
    input fetch,
    input execute,
    input incr_pc,
    output reg [15:0] pc_out,
    output reg [3:0] ir_out,
    output reg [15:0] ma_out,
    output reg [15:0] md_out,
    output reg [15:0] ac_out
    );
    
    
    always @(posedge clk or posedge reset)
    
    if (reset) begin
       pc_out <= 0;
       ac_out<=0;
       ir_out<=0;
       ma_out<=0;
       md_out <=0;
    end else
    if (incr_pc) begin
       pc_out <= pc_out +1;
    end
endmodule
