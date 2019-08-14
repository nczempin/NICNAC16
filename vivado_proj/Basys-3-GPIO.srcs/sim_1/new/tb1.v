`timescale 10ns / 10ps

module testbench_system_timing ();
reg clk, reset, enable, icynext;
wire t0, t1, t2, t3;
wire fetch, execute;
wire new_cycle;
wire[15:0] pc_out, ma_out; 
reg [15:0] md_out;
wire[15:0] ac_out;
wire[3:0] ir_out;
wire incr_pc;
initial begin
clk=1;
enable = 0;
icynext = 1;
md_out = 0;


	//start reset

	reset = 1'b1;
	
		#4
	reset = 1'b0;
	icynext =0;
	// end reset
	

end
always #1 clk =~clk;

always #700 enable =~ enable; 
always @(pc_out)
begin
  if (pc_out == 7)
     md_out = 16'b0001000000000000;
end
system_timing st (reset, clk, icynext, t0,t1,t2,t3, fetch, execute,new_cycle);
datapath dp (clk, reset, fetch, execute, t0, t1, t2, t3, incr_pc, pc_out, ir_out, ma_out, md_out, ac_out);
control_unit cu( fetch, execute, incr_pc);
    
endmodule
