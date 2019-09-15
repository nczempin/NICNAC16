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
    // ROM starts at $0100 at the moment; within it the addresses cut off the 01 (MSB)
    8'h00: data = 16'h410f; // LDA ($0115)
    8'h01: data = 16'h6109; // ADD ($0109)
    8'h02: data = 16'h5008; // STA $000 ;store result at address 8, which is in RAM
    8'h03: data = 16'h1101; // JMP $0101
    8'h08: data = 16'h0007; // .dw 7
    8'h09: data = 16'h000c; // .dw $0c
    8'h0f: data = 16'ha5c3; // .dw $a5c3
    
    default: data = 16'h05c5; //NOP with tag
    endcase
endmodule
