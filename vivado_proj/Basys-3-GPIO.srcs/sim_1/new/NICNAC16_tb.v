`timescale 10ns / 1ps

module NICNAC16_tb ();
reg clk, reset;

wire [15:0] SW;
wire [4:0] BTN;
assign BTN = {reset,4'b0000};
wire LED;
wire SSEG_CA;
wire SSEG_AN;

    reg [1:0] knob_setting;
    reg pushbutton;

NICNAC16 nn16 (
    .clk_fpga(clk),
    .SW(SW),
    .BTN(BTN),
    .LED(LED),
    .SSEG_CA(SSEG_CA),
    .SSEG_AN(SSEG_AN),
    .knob_setting(knob_setting) ,
    .pushbutton(pushbutton)
);

initial begin
    clk=1;

    pushbutton =1'b1; 
   knob_setting =2'b00;
	reset = 1'b1;
	
		#4
	reset = 1'b0;
	
	#30.1
	
	 knob_setting =2'b01;
	#30.2
	
	 knob_setting =2'b10;
	#30.3
	
	 knob_setting =2'b11;
	 	#30.4
	
	 knob_setting =2'b00;
	 #10
	 pushbutton <= 1'b0;
	 #20
    pushbutton =1'b1; 



end
always #0.5 clk =~clk;

//always #700 enable =~ enable; 

    
endmodule
