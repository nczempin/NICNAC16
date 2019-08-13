`timescale 10ns / 1ps

module testbench_system_timing ();
reg clk, reset, enable, icynext;
wire t0, t1, t2, t3;
wire fetch, execute;
//reg fetch_int, execute_int;

initial begin
clk=0;
enable = 0;
icynext = 0;


	//start reset
	reset = 1'b1;
	#4
	reset = 1'b0;
	
		#4
	reset = 1'b1;
	// end reset
	

end
always #1 clk =~clk;
//always @(posedge clk)
//    execute_int = execute;
//always @(posedge clk)
//    fetch_int = fetch;
always #10 icynext=~icynext;
always #700 enable =~ enable; 

//system_timing st (reset, clk, icynext, t0,t1,t2,t3, fetch, execute);
//Stages st (clk, reset, icynext, fetch, execute);
FDCE c(execute, icynext, clk, ~reset, fetch); 
FDSE s(fetch, icynext, clk, ~reset, execute); 
endmodule
