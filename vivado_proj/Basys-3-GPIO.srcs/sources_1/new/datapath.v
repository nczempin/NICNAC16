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


module datapath(clk, reset, fetch, execute, incr_pc, PC_IN, t0, t1, t2, t3, pc_out, ir_out, ma_out, md_out, ac_out, I_NOP, I_JMP, EN_IR, EN_PC);
     input clk;
    input reset;
    input fetch;
    input execute;
    input incr_pc;
    input[15:0] PC_IN;
    input t0, t1, t2, t3;
    input EN_IR;
    input EN_PC;
    
    output [15:0] pc_out;
    output [3:0] ir_out;
    output reg [15:0] ma_out;
    input  [15:0] md_out;
    output reg [15:0] ac_out;
    
    output I_NOP;
    output I_JMP;
   
    
    
    REG4CE IR(ir_out, clk, EN_IR, reset, md_out[15:12]);
    
    wire D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15;
    assign I_NOP = D0;
    assign I_JMP = D1;
    
    Decoder4_16 instruction_decoder(D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15, ir_out, ~reset);
    
    
    FD16CE PC(
       .D(PC_IN),
       .CE(EN_PC),
       .C(clk),
       .CLR(reset),
       .Q(pc_out)
    );
    
    always @(posedge clk or posedge reset)
    
    if (reset) begin
       ac_out<=0;
       ma_out<=0;
       //md_out <=0;
    end 
endmodule
