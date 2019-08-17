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
    
    
    FDSE ft (
       .D(EXECUTE),
       .C( CLK),
       .S(RESET),
       .CE(NEW_CYCLE),
       .Q(FETCH)   
       );
   FDCE ex(
     .D(FETCH),
     .C(CLK),     
     .CLR(RESET), 
     .CE(NEW_CYCLE),
     .Q(EXECUTE)
   );
 
endmodule
