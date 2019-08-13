`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/13/2019 03:23:28 PM
// Design Name: 
// Module Name: delay
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


module delay(
    input ENABLE_NEXT,
    input I,
    input CLK,
    output O,
    output T,
    output _T
    );
        FD dff_d (
       .D(I),
       .C( CLK),
       .Q( T)
       );
    assign _T = ~T;
    assign  O = T & ENABLE_NEXT;
    
endmodule
