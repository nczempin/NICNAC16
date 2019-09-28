`timescale 10ns / 1ps

module System_testbench ();
reg clk, reset;

reg [15:0] SW;
wire [4:0] BTN;
assign BTN = {reset,4'b0000};
wire [15:0] LED;
wire [7:0]SSEG_CA;
wire [3:0]SSEG_AN;

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
   reset =1'b0;
   #1
	reset = 1'b1;
	SW = 16'haced;
	
		#4
	reset = 1'b0;
	// reset done
	#2
	
// LOAD via console
	SW = 16'h0000;
    knob_setting =2'b11;
	#3
	pushbutton <= 1'b0;
    #3
    pushbutton =1'b1; 
 	#3
	// WRITE via console
	SW = 16'h4113;
	knob_setting =2'b10;
	#3
	pushbutton <= 1'b0;
	#3
    pushbutton =1'b1; 
    #3
    
    SW = 16'h6114;
	#2
	pushbutton <= 1'b0;
	#2
    pushbutton =1'b1; 
    #3
	
    SW = 16'h7004;
	#2
	pushbutton <= 1'b0;
	#2
    pushbutton =1'b1; 
    #3
	SW = 16'h1001;
	#2
	pushbutton <= 1'b0;
	#2
    pushbutton =1'b1; 
    #3
    SW = 16'hfc27;
	#2
	pushbutton <= 1'b0;
	#2
    pushbutton =1'b1; 
    #3
    SW = 16'h1000;
	#3
	pushbutton <= 1'b0;
	#3
    pushbutton =1'b1; 
    #3
	
    SW = 16'h0000;
    knob_setting =2'b11;
	#3
	pushbutton <= 1'b0;
    #3
    pushbutton =1'b1; 
 	#3
    knob_setting =2'b00;
	
	
	
	#6
// LOAD via console
	SW = 16'h0000;
    knob_setting =2'b11;
	#3
	pushbutton <= 1'b0;
    #3
    pushbutton =1'b1; 
 	#3

	// READ on console
	 knob_setting =2'b01;
	 #6
	 pushbutton = 1'b0;
	 #3
	 pushbutton = 1'b1;
	#6
	
	// READ on console
	knob_setting =2'b01;
	 #6
	 pushbutton = 1'b0;
	 #3
	 pushbutton = 1'b1;
	#6
	
	// READ on console
	 knob_setting =2'b01;
	 #6
	 pushbutton = 1'b0;
	 #3
	 pushbutton = 1'b1;
	#6
	
	// READ on console
	SW = 16'h0000;
	 knob_setting =2'b01;
	 #6
	 pushbutton = 1'b0;
	 #3
	 pushbutton = 1'b1;
	#6
	
	
// LOAD via console
	SW = 16'h0000;
    knob_setting =2'b11;
	#6
	pushbutton <= 1'b0;
    #3
    pushbutton =1'b1; 
 	#6
	
	
	// RUN MODE
	 knob_setting =2'b00;
	 
#32
	SW = 16'hffff;
	
	 knob_setting =2'b11;
	#6
	 pushbutton <= 1'b0;
	 #3
    pushbutton =1'b1; 
    #2
 knob_setting =2'b00;
end
always #0.5 clk =~clk;

//always #700 enable =~ enable; 

    
endmodule
