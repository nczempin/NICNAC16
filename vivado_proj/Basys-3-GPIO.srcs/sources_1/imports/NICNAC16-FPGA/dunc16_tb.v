// Verilog test fixture created from schematic B:\NICNAC16\dunc16.sch - Wed Sep 17 00:13:28 2014

`timescale 10us / 10ns

module dunc16_dunc16_sch_tb();

// Inputs
    reg CLK;
   reg RESET;

wire [15:0] PC_OUT;


// Bidirs

// Instantiate the UUT
   dunc16 UUT (

		.pc_out(PC_OUT),
		.clk(CLK), 
		.reset(RESET)
   );
	
//initial begin  
//	//$monitor("%b%b%b%b PC=%h, f%be%b, s%bl%b. %h %h",UUT.T0,UUT.T1,UUT.T2,UUT.T3,UUT.PC.Q,UUT.FETCH, UUT.EXECUTE, I_STA, UUT.I_LDA, UUT.MD.Q, UUT.AC.Q);  
//    $monitor("%b%b PC=%h,",CLK, RESET,PC_OUT);  
//end

initial begin
//	ININ = 0;
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
	repeat (96)
	@(posedge CLK);


	//$finish;
end
endmodule
