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


module Stages(CLK, RESET, NEW_CYCLE, FETCH, EXECUTE);
    input CLK;
    input RESET;
    input NEW_CYCLE;
    output FETCH;
    output EXECUTE;
    
    FDPE #(
    .INIT(1'b1) 
    )
    ft (
       .D(FETCH),
       .C( CLK),
       .PRE(RESET),
       .CE(NEW_CYCLE),
       .Q(EXECUTE)   
       );
   FDRE #(
      .INIT(1'b0) 
   ) ex (
      .Q(FETCH),      // 1-bit Data output
      .C(CLK),      // 1-bit Clock input
      .CE(NEW_CYCLE),    // 1-bit Clock enable input
      .R(RESET),  // 1-bit Asynchronous clear input
      .D(EXECUTE)       // 1-bit Data input
   );
   
   
 
endmodule
