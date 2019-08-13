`timescale 10ns / 1ps

module testbench_system_timing ();
reg clk, reset, enable, icynext;
wire t0, t1, t2, t3;
wire fetch, execute;

initial begin
clk=0;
enable = 0;
icynext = 0;


	//start reset
	reset = 1'b1;
	repeat(4)
		#1
		clk = ~clk;
	reset = 1'b0;
	// end reset
	
	forever
		#1
		clk = ~clk; // generate a clock

end

always #50 icynext=~icynext;
always #500 enable =~ enable; 

system_timing st (reset, clk, icynext, t0,t1,t2,t3, fetch, execute); 
endmodule
