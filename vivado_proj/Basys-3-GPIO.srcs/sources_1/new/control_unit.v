`timescale 1ns / 1ps


module control_unit(clk, reset, fetch, execute, 
                    t0, t1, t2, t3,
                    I_JMP, I_NOP, I_LDA, I_STA,I_ADD, 
                    incr_pc, do_jump,
                     EN_IR, EN_PC, EN_MA, EN_MD, EN_AC,
                     ir_out, ir_in);
    input clk;
    input reset;
    input [3:0] ir_in;
    output [3:0] ir_out;
    output fetch;
    output execute;
    
    output t0, t1, t2, t3;
    output I_JMP;
    output I_NOP;
    output I_LDA;
    output I_STA;
    output I_ADD;
    
    
    output incr_pc;
    output do_jump;
    
    output EN_IR;
    output EN_PC;
    output EN_MA;
    output EN_MD;
    output EN_AC;
    
    
    wire [15:0] D;
    assign I_NOP = D[0];
    assign I_JMP = D[1];
    assign I_LDA = D[4];
    assign I_STA = D[5];
    assign I_ADD = D[6];
    wire instr_jump;
    
    wire icynext;
    assign	icynext =
       reset 
       |execute & I_JMP &t0
       |execute & I_NOP & t0
       |execute & I_LDA & t2
       |execute & I_ADD & t2
       ;

    wire new_cycle;
    
    assign instr_jump = I_JMP; // TODO or BL or taken branches
    assign EN_IR = t3 & fetch;
    assign EN_PC = incr_pc |do_jump; 
    assign EN_MA = (t3 & fetch )|
                   (t0&fetch);
    assign EN_MD = fetch & (t0 |t2)
                    |execute & I_LDA & t1
                    |execute & I_ADD & t1
                    ;
    
    assign EN_AC = execute & I_LDA & t2
                   |execute & I_ADD & t2;
    assign do_jump = execute & t0 & instr_jump;
    assign incr_pc =fetch&t2;
    
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
   REG4CE IR(ir_out, clk, EN_IR, reset, ir_in);
   Decoder4_16Bus instruction_decoder(D, ir_out, ~reset);

endmodule
