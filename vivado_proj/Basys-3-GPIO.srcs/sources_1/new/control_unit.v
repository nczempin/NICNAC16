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


module control_unit(clk, reset, fetch, execute, t0, t1, t2, t3, I_JMP, incr_pc, do_jump, EN_IR, EN_PC);
    input clk;
     input reset;
    input fetch;
    input execute;
    
    output t0, t1, t2, t3;
    input I_JMP;
    
    
    output incr_pc;
    output do_jump;
    output EN_IR;
    output EN_PC;
    
    wire instr_jump;
    
    wire icynext;
    assign	icynext =reset | (execute & I_JMP&t0);

    wire new_cycle;
    
    assign instr_jump = I_JMP; // TODO or BL or taken branches
    assign EN_IR = t3 & fetch;
    assign EN_PC = incr_pc |do_jump; 
    assign do_jump = execute & t0 & instr_jump;
    assign incr_pc =1;
    
    system_timing st (
        .reset(reset),
        .clk(clk),
        .icynext(icynext),
        .t0(t0),
        .t1(t1),
        .t2(t2),
        .t3(t3),
        .fetch(fetch),
        .execute(execute),
        .new_cycle(new_cycle)
    );
endmodule
