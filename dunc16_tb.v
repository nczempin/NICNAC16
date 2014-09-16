// Verilog test fixture created from schematic B:\NICNAC16\dunc16.sch - Wed Sep 17 00:13:28 2014

`timescale 1ns / 1ps

module dunc16_dunc16_sch_tb();

// Inputs
   reg FETCH;
  reg EXECUTE;
   reg T0;
   reg T1;
   reg T2;
   reg T3;
   reg CLK;
   reg RESET;

// Output
   wire I_STA;
   wire SETWRITE;
   wire CLRWRITE;
   wire [15:0] AC_OUT;
   wire [15:0] MD_OUT;

// Bidirs

// Instantiate the UUT
   dunc16 UUT (
		.I_STA(I_STA), 
		.FETCH(FETCH), 
		.EXECUTE(EXECUTE), 
		.SETWRITE(SETWRITE), 
		.CLRWRITE(CLRWRITE), 
			.T0(T0), 
	.T1(T1), 
		.T2(T2),
		.T3(T3),
		.AC_OUT(AC_OUT), 
		.MD_OUT(MD_OUT), 
		.CLK(CLK), 
		.RESET(RESET)
   );

task bigCycle;
begin
	FETCH = 1;
	EXECUTE = 0;

	@(posedge CLK);

	T0 = 1;
	@(posedge CLK);
	T0 = 0;
	T1=1;
	@(posedge CLK);
	T1 = 0;
	T2 = 1;
	@(posedge CLK);
	T2 = 0;
	T3 = 1;
	@(posedge CLK);
	T3 = 0;
	
	
	
	T0 = 1;
	FETCH = 0;
	EXECUTE = 1;
@(posedge CLK);
	T0 = 0;
	T1=1;
	@(posedge CLK);
	T1 = 0;
	T2 = 1;
	@(posedge CLK);
	T2 = 0;
	T3 = 1;
	@(posedge CLK);
	T3 = 0;

	end
endtask


initial begin
T0 = 0;
T1 = 0;
T2 = 0;
T3 = 0;
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
	repeat (4)
	bigCycle();


	$finish;
end
endmodule
