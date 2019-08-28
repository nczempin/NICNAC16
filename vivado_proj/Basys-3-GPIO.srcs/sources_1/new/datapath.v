`timescale 1ns / 1ps


module datapath(clk, reset, fetch, execute, incr_pc, PC_IN,
         t0, t1, t2, t3,
         pc_out, ma_out, md_out, ac_out, alu_out,
         MEMORY_READ,
         I_NOP, I_JMP, I_LDA, I_STA, I_ADD,
         EN_IR, EN_PC, EN_MA, EN_MD, EN_AC,
         DO_JUMP);
         
    input clk;
    input reset;
    input fetch;
    input execute;
    input incr_pc;
    
    output[15:0] PC_IN;
    
    input t0, t1, t2, t3;
    
    input EN_IR;
    input EN_PC;
    input EN_MA;
    input EN_MD;
    input EN_AC;
    
    input DO_JUMP;
    
    //output [15:0] pc_out;
   
    output [15:0] ma_out;
    output  [15:0] md_out;
    output [15:0] ac_out;
    output [15:0] alu_out;
    
    input [15:0] MEMORY_READ;
    
    output I_NOP;
    output I_JMP;
    output I_LDA;
    output I_STA;
    output I_ADD;
    
 output  [15:0]pc_out;
 
 
    wire [15:0] MA_IN;
    wire [15:0] MD_IN;
    wire [15:0] AC_IN;
    
    wire [15:0] MA_MUX_OUT;
    wire [15:0] AC_MUX_OUT;
    
    wire [15:0] mma; //M[MA]
    
    assign MA_IN= MA_MUX_OUT[11:0];
    assign MD_IN = MEMORY_READ; // TODO mux
    
    assign AC_IN = AC_MUX_OUT;//md_out; // TODO: mux with alu_out
    
     
    
    wire CO;
    wire [15:0]JUMP_ADR;
    assign JUMP_ADR = md_out[11:0];
    
    
    wire DO_RET;
    select1of4_16 pc_in_priority(JUMP_ADR, alu_out, 16'h0, D, DO_JUMP, incr_pc, 1'b0, DO_RET, PC_IN);

    FD16CE PC(
       .D(PC_IN),
       .CE(EN_PC),
       .C(clk),
       .CLR(reset),
       .Q(pc_out)
    );
    //TODO these need to move to the CU
    wire MA_MUX_SEL;
    assign MA_MUX_SEL = fetch & t3; //TODO document as to why
    wire AC_MUX_SEL;
    assign AC_MUX_SEL = execute & I_ADD & t2; //TODO document as to why
    
    
    
    mux16_2 mamux( pc_out, md_out, MA_MUX_SEL, MA_MUX_OUT);
    
    FD16CE MA(
       .D(MA_IN),
       .CE(EN_MA),
       .C(clk),
       .CLR(1'b0),
       .Q(ma_out)
    );
      // mux16_2 mdmux( pc_out, md_out, MA_MUX_SEL, MA_MUX_OUT);
    
    FD16CE MD(
       .D(MD_IN),
       .CE(EN_MD),
       .C(clk),
       .CLR(reset),
       .Q(md_out)
    );
    
     mux16_2 acmux( md_out, alu_out, AC_MUX_SEL, AC_MUX_OUT);
    FD16CE AC(
       .D(AC_IN),
       .CE(EN_AC),
       .C(clk),
       .CLR(reset),
       .Q(ac_out)
    );
    wire [15:0] ALU_IN_A;
    wire [15:0] ALU_IN_B;
    wire ALU_MUX_A_SEL;
    wire ALU_MUX_B_SEL;
    //TODO: CU
    assign ALU_MUX_A_SEL =incr_pc;
    assign ALU_MUX_B_SEL =incr_pc;
    
    mux16_2 alumux_a( ac_out, pc_out, ALU_MUX_A_SEL, ALU_IN_A);
    mux16_2 alumux_b ( md_out, 16'b1, ALU_MUX_B_SEL, ALU_IN_B);
    
  ADSU16 ALU(ALU_IN_A, ALU_IN_B, CO, alu_out);
    
  
endmodule
