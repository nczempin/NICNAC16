`timescale 1ns / 1ps

module debouncer_tb();

// Inputs
    reg clk;
   reg [4:0] switch;
   wire [4:0] debounced_switch;

// Instantiate the UUT
   debouncer UUT (
		.clk(clk),
		.switch_in(switch),
		.switch_out(debounced_switch)
   );
//initial begin  
//	//$monitor("%b%b%b%b PC=%h, f%be%b, s%bl%b. %h %h",UUT.T0,UUT.T1,UUT.T2,UUT.T3,UUT.PC.Q,UUT.FETCH, UUT.EXECUTE, I_STA, UUT.I_LDA, UUT.MD.Q, UUT.AC.Q);  
//    $monitor("%b%b PC=%h,",CLK, RESET,PC_OUT);  
//end
initial begin
    clk=1;
    switch = 5'b00000;
    #100.3 // make it unsynchronized
    
    switch =5'b00001;
   repeat (6) begin
     #1000
    switch = 5'b00000;
    #1000
    switch =5'b00001;
   end
#10000;
   repeat (6) begin
     #1000
     
    switch = 5'b00000;
    #1000
    switch =5'b00001;
   end

end
always #0.5 clk =~clk;

//initial begin
////	ININ = 0;
//	CLK = 0;
//	//start reset
//	RESET = 1'b1;
//	repeat(4)
//		#1
//		CLK = ~CLK;
//	RESET = 1'b0;
//	// end reset
	
//	forever
//		#1
//		CLK = ~CLK; // generate a clock
//end

//initial begin
//	@(negedge RESET); // wait for reset
//	repeat (96)
//	@(posedge CLK);


//	//$finish;
//end
endmodule
