`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/14/2019 09:35:57 AM
// Design Name: 
// Module Name: control_unit
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


module control_unit(fetch, execute, t0, t1, t2, t3, i_jmp, incr_pc, do_jump, EN_IR);
    input fetch;
    input execute;
    
    input t0, t1, t2, t3;
    input i_jmp;
    
    
    output incr_pc;
    output do_jump;
    output EN_IR;
    
    wire instr_jump;
    
    assign instr_jump = i_jmp; // TODO or BL or taken branches
    assign EN_IR = t3 & fetch;
    
    assign do_jump = execute & t0 & instr_jump;
    assign incr_pc =1;
endmodule
