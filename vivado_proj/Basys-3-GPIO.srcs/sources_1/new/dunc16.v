`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/12/2019 11:00:21 PM
// Design Name: 
// Module Name: dunc16
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


module dunc16(
    wire T0,
    wire T1,
    wire T2,
    wire T3,
    input CLK,
    input RESET,
    input ININ,
    output I_JMP,
    output DO_JUMP,
    output [15:0] PC_OUT
    );
endmodule
