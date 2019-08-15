`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2019 12:17:20 AM
// Design Name: 
// Module Name: ROM
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


module ROM(
    input [7:0] address,
    output reg [15:0] data
    );
    always @(address)
    case (address)
    8'd0: data = 16'h400f; //LDA (15)
    8'd1: data = 16'h6009; //ADD (9)
    8'd2: data = 16'h0000; //NOP
    8'd3: data = 16'h1001; // JMP 1
    8'd9: data = 16'h0007; // .dw 7
    8'd15: data = 16'ha5c3; // .dw 7
    
    default: data = 16'h05c5; //NOP with tag
    endcase
endmodule
