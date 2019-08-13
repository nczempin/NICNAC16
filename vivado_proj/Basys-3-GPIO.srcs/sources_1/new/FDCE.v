`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/13/2019 04:33:44 PM
// Design Name: 
// Module Name: FDCE
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


module FDCE(
    input D,
    input CE,
    input C,
    input CLR,
    output reg Q
    );
    
    always @ ( posedge C )
	if (CLR)
		Q <= 0;
	else if (CE)
		Q <= D;
endmodule
