`timescale 10ns / 1ps

module testbench_system_timing ();
reg clk, reset, enable, icynext;
wire t0, t1, t2, t3;
wire fetch, execute;
wire new_cycle;

initial begin
clk=0;
enable = 0;
icynext = 1;


	//start reset

	reset = 1'b1;
	
		#4
	reset = 1'b0;
	icynext =0;
	// end reset
	

end
always #1 clk =~clk;

always #700 enable =~ enable; 

system_timing st (reset, clk, icynext, t0,t1,t2,t3, fetch, execute,new_cycle);
//timing_ring_counter  trc(clk, icynext, t0, t1, t2, t3, new_cycle);
//Stages st (clk, reset, new_cycle, fetch, execute);
//FDCE c(execute, icynext, clk, ~reset, fetch); 
//FDSE s(fetch, icynext, clk, ~reset, execute); 
endmodule
