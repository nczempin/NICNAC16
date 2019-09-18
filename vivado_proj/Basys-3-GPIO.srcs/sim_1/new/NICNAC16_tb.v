`timescale 10ns / 1ps

module NICNAC16_tb ();
reg clk, reset;

wire [15:0] SW;
wire [4:0] BTN;
assign BTN = {reset,4'b0000};
wire LED;
wire SSEG_CA;
wire SSEG_AN;
NICNAC16 nn16 (
    .clk_fpga(clk),
    .SW(SW),
    .BTN(BTN),
    .LED(LED),
    .SSEG_CA(SSEG_CA),
    .SSEG_AN(SSEG_AN)   
);

initial begin
clk=1;
//enable = 0;
//md_out = 0;


	//start reset

	reset = 1'b1;
	
		#4
	reset = 1'b0;
	// end reset
	

end
always #0.5 clk =~clk;

//always #700 enable =~ enable; 

    
endmodule
