`timescale 10ns / 1ps

module testbench_dp_cu ();
reg clk, reset;

//reg enable;
wire t0, t1, t2, t3;
wire fetch, execute;

wire[15:0] pc_out, ma_out; 
wire [15:0] md_out;
wire[15:0] ac_out;
wire[3:0] ir_out;
wire [15:0] alu_out;
wire incr_pc;

wire [15:0] PC_IN;

wire I_NOP, I_JMP, I_LDA, I_STA, I_ADD;
wire EN_IR, EN_PC, EN_MA, EN_MD, EN_AC;

wire do_jump;

wire [15:0] mem_read;
wire MA_MUX_SEL;
    wire AC_MUX_SEL;
    wire ALU_MUX_A_SEL;
    wire ALU_MUX_B_SEL;
    
initial begin
clk=1;
//enable = 0;
//md_out = 0;


	//start reset

	reset = 1'b1;
	
		#4
	reset = 1'b0;
	// end reset
	

end
always #0.5 clk =~clk;

//always #700 enable =~ enable; 


Memory romram(
    .mem_address(ma_out), 
		.mem_write(16'b0), 
		.en_mem_write(1'b0), 
		.clk(clk), 
		.mem_read(mem_read)
	);
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
