// Verilog test fixture created from schematic B:\NICNAC16\dunc16.sch - Wed Sep 17 00:13:28 2014

`timescale 1ns / 1ps

module dunc16_dunc16_sch_tb();

// Inputs
    reg CLK;
   reg RESET;

// Output
   wire I_STA;
   wire SETWRITE;
   wire CLRWRITE;
   wire WRITE;
  wire DO_WRITE;
   wire [15:0] AC_OUT;
   wire [15:0] MD_OUT;
   wire [15:0] MMO;
  wire [15:0] ADDRESS;

// Bidirs

// Instantiate the UUT
   dunc16 UUT (
		.I_STA(I_STA),
		
		.SETWRITE(SETWRITE), 
		.CLRWRITE(CLRWRITE), 
		.WRITE(WRITE), 
		.DO_WRITE(DO_WRITE), 
		.AC_OUT(AC_OUT), 
		.MD_OUT(MD_OUT), 
		.MMO(MMO), 
		.ADDRESS(ADDRESS), 
		.CLK(CLK), 
		.RESET(RESET)
   );
	
initial begin  
	$monitor("%b%b%b%b PC=%h, %b%b, %b. %h %h",UUT.T0,UUT.T1,UUT.T2,UUT.T3,UUT.PC.Q,UUT.FETCH, UUT.EXECUTE, I_STA, UUT.MD.Q, UUT.AC.Q);  
end

initial begin
	CLK = 0;
	//start reset
	RESET = 1'b1;
	repeat(4)
		#10
		CLK = ~CLK;
	RESET = 1'b0;
	// end reset
	
	forever
		#10
		CLK = ~CLK; // generate a clock
end

initial begin
	@(negedge RESET); // wait for reset
	repeat (40)
	@(posedge CLK);


	$finish;
end
endmodule
