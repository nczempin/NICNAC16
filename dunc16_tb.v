// Verilog test fixture created from schematic B:\NICNAC16\dunc16.sch - Wed Sep 17 00:13:28 2014

`timescale 1ns / 1ps

module dunc16_dunc16_sch_tb();

// Inputs
    reg CLK;
   reg RESET;

// Output
   wire I_STA;
   wire I_LDA;
   wire I_JMP;
   wire I_ADD;
	wire I_BL;
	wire I_RET;
	wire I_BAN;
	
	
	
	wire EN_MD;
	wire EN_MA;
	wire EN_AC;
	wire EN_PC;
	wire EN_IR;
	
	wire DO_BL;
	wire DO_JUMP;
	wire DO_RET;
	wire DO_ADD;
	wire DO_LDA;
	
	
	wire INCR_PC;
 wire [15:0] PC_OUT;
	
    wire [15:0] AC_OUT;
   wire [15:0] AC_IN;
   wire [15:0] MD_OUT;
   wire [15:0] PC_IN;
  wire [3:0] IR_OUT;
  wire [15:0] LINK_OUT;
   wire [15:0] MA_OUT;
  wire [15:0] MA_IN;
 wire [15:0] MD_IN;
 wire [15:0] MEMORY_READ;
  wire [15:0] MMO;
	wire AZ;
	wire AN;
 reg ININ;

// Bidirs

// Instantiate the UUT
   dunc16 UUT (
		.I_STA(I_STA),
		.I_LDA(I_LDA),
		.I_JMP(I_JMP),
		.I_BAN(I_BAN),
		.I_ADD(I_ADD),
		.I_BL(I_BL),
		.I_RET(I_RET),
		
		.AN(AN),
		.AZ(AZ),
		.DO_BL(DO_BL),
		.DO_RET(DO_RET),
		.DO_JUMP(DO_JUMP),
		.DO_ADD(DO_ADD),
		.DO_LDA(DO_LDA),
		
		.INCR_PC(INCR_PC),
		.T0(T0),
		.T1(T1),
		.T2(T2),
		.T3(T3),
		.EN_MD(EN_MD),
		.EN_MA(EN_MA),
		.EN_AC(EN_AC),
		.EN_PC(EN_PC),
		.EN_IR(EN_IR),
		.MEMORY_READ(MEMORY_READ),
		.AC_OUT(AC_OUT), 
		.AC_IN(AC_IN), 
		.MD_OUT(MD_OUT), 
		.IR_OUT(IR_OUT),
		.LINK_OUT(LINK_OUT),
		.PC_OUT(PC_OUT),
		.PC_IN(PC_IN),
		.MA_IN (MA_IN),
		.MD_IN (MD_IN),
		.MMO(MMO), 
		.MA_OUT(MA_OUT), 
		.ININ(ININ),
		.CLK(CLK), 
		.RESET(RESET)
   );
	
initial begin  
	$monitor("%b%b%b%b PC=%h, f%be%b, s%bl%b. %h %h",UUT.T0,UUT.T1,UUT.T2,UUT.T3,UUT.PC.Q,UUT.FETCH, UUT.EXECUTE, I_STA, UUT.I_LDA, UUT.MD.Q, UUT.AC.Q);  
end

initial begin
	ININ = 0;
	CLK = 0;
	//start reset
	RESET = 1'b1;
	repeat(4)
		#1
		CLK = ~CLK;
	RESET = 1'b0;
	// end reset
	
	forever
		#1
		CLK = ~CLK; // generate a clock
end

initial begin
	@(negedge RESET); // wait for reset
	repeat (960)
	@(posedge CLK);


	$finish;
end
endmodule
