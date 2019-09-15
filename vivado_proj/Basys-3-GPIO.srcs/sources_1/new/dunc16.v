`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/12/2019 11:00:21 PM
// Design Name: 
// Module Name: dunc16
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

module dunc16(clk, reset,led_out,status, mem_address, mem_read, mem_write, en_mem_write);

    input clk, reset;
    //
    
    output [15:0] led_out;
    output status;
    output [15:0] mem_address;
    output [15:0] mem_read;
    output [15:0] mem_write;
    output en_mem_write;
    
    
    wire fetch;
    wire execute;
    
    wire [15:0] pc_out;
    wire [15:0] ac_out;
    wire [15:0] ma_out; 
    assign mem_address = ma_out;
    
    assign en_mem_write = 1'b0;    
    wire t0, t1, t2, t3;
    
    wire [15:0] md_out;
    wire [3:0] ir_out;
    wire [15:0] alu_out;
    wire incr_pc;
    
    wire [15:0] PC_IN;
    
    wire I_NOP, I_JMP, I_LDA, I_STA, I_ADD;
    wire EN_IR, EN_PC, EN_MA, EN_MD, EN_AC;
    
    wire do_jump;
      wire MA_MUX_SEL;
    wire AC_MUX_SEL;
    wire ALU_MUX_A_SEL;
    wire ALU_MUX_B_SEL;
    
    assign led_out[3:0] = pc_out[3:0];
    assign led_out[7:4] = ac_out[3:0];
    assign led_out[11:8] = md_out[3:0];
    assign led_out[15:12] = ma_out[3:0];
            
    //ROM rom(ma_out[7:0], MEMORY_READ);
    
    assign status =fetch;
    
    datapath dp (
       .clk(clk),
       .reset(reset),
       .fetch(fetch),
       .execute(execute),
       .incr_pc(incr_pc),
       .PC_IN(PC_IN),
       .t0(t0),
       .t1(t1),
       .t2(t2),
       .t3(t3),
       .pc_out(pc_out),
       .ma_out(ma_out),
       .md_out(md_out),
       .ac_out(ac_out),
       .alu_out(alu_out),
       .mem_read(mem_read),
       .I_NOP(I_NOP),
       .I_JMP(I_JMP),
       .I_LDA(I_LDA),
       .I_STA(I_STA),
       .I_ADD(I_ADD),
       .EN_IR(EN_IR),
       .EN_PC(EN_PC),
       .EN_MA(EN_MA),
       .EN_MD(EN_MD),
       .EN_AC(EN_AC),
       .DO_JUMP(do_jump),
       .MA_MUX_SEL(MA_MUX_SEL),
       .AC_MUX_SEL(AC_MUX_SEL),
       .ALU_MUX_A_SEL(ALU_MUX_A_SEL),
       .ALU_MUX_B_SEL(ALU_MUX_B_SEL)
    );
     
    
    control_unit cu( 
        .clk(clk),
        .reset(reset),
        .fetch(fetch),
        .execute(execute),
        .t0(t0),
        .t1(t1),
        .t2(t2),
        .t3(t3),
        .I_JMP(I_JMP),
        .I_NOP(I_NOP),
        .I_LDA(I_LDA),
        .I_STA(I_STA),
        .I_ADD(I_ADD),
        .incr_pc(incr_pc),
        .do_jump(do_jump),
        .EN_IR(EN_IR),
        .EN_PC(EN_PC),
        .EN_MA(EN_MA),
        .EN_MD(EN_MD),
        .EN_AC(EN_AC),
        .ir_out(ir_out),
        .ir_in(md_out[15:12]),
         .MA_MUX_SEL(MA_MUX_SEL),
       .AC_MUX_SEL(AC_MUX_SEL),
       .ALU_MUX_A_SEL(ALU_MUX_A_SEL),
       .ALU_MUX_B_SEL(ALU_MUX_B_SEL)
    );
    
endmodule
