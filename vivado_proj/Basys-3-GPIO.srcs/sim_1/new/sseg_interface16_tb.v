`timescale 1ns / 1ps


module sseg_interface16_tb();
 wire [7:0] SSEG_CA;
 wire [3:0] SSEG_AN;


reg clk;
  wire [15:0] sseg_in;
    assign sseg_in = 16'h1234;
    wire [3:0] sseg_dp;
    assign sseg_dp = 4'b1111;
    sseg_interface16b si16(clk, sseg_in, sseg_dp, SSEG_CA, SSEG_AN);
 
initial begin
clk=1;


end
always #1 clk =~clk;
endmodule
