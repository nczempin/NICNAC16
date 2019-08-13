`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/13/2019 04:42:35 PM
// Design Name: 
// Module Name: Stages
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


module Stages(
    input CLK,
    input RESET,
    input NEW_CYCLE,
    output FETCH,
    output EXECUTE
    );
    wire FETCH_INT;
    wire EXECUTE_INT;
    assign FETCH = FETCH_INT;
    assign EXECUTE = EXECUTE_INT;
    FDSE ex (
       .D(FETCH_INT),
       .C( CLK),
       .S( RESET),
       .CE(NEW_CYCLE),
       .Q(EXECUTE_INT)
       );
    FDCE ft (
       .D(EXECUTE_INT),
       .C( CLK),
       .CLR( RESET),
       .CE(NEW_CYCLE),
       .Q(FETCH_INT)
       );
endmodule
