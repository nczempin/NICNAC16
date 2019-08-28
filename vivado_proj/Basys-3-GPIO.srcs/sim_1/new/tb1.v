`timescale 10us / 10ns

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

wire [15:0] MEMORY_READ;

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
always #1 clk =~clk;

//always #700 enable =~ enable; 


ROM rom(ma_out[7:0], MEMORY_READ);

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
   .MEMORY_READ(MEMORY_READ),
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
   .DO_JUMP(do_jump)
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
    .EN_AC(EN_AC)


);
    
endmodule
