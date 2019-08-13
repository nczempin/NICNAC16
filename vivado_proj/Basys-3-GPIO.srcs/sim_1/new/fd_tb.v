`timescale 10ps / 1ps

module testbench_d ();
reg clk, data, enable;
wire out;
wire t, nt;

initial begin
clk=0;
data=0;
enable = 0;
#10000 $finish;
end

always #100 clk=~clk;
always #333 data=~data;
always #555 enable =~ enable; 

delay d (enable, data, clk, out, t, nt); 
endmodule
