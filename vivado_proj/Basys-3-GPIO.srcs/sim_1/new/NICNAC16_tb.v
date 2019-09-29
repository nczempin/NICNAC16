`timescale 10ns / 1ps

module NICNAC16_tb ();
    reg clk, reset;

    reg [15:0] SW;
    wire [4:0] BTN;
//assign BTN = {reset,4'b0000};
    wire [15:0] LED;
    wire [7:0]SSEG_CA;
    wire dp;
    wire [6:0] seg;
    assign SSEG_CA = {dp, seg};
    wire [3:0]SSEG_AN;
    wire [3:0] an;
    assign SSEG_AN = an;

   // reg [1:0] knob_setting;
    reg pushbutton;
wire btnC, btnU, btnL, btnR, btnD;
assign btnC = reset;
assign BTN={btnC, btnU, btnL, btnR, btnD};

    wire [7:0] JA;
    wire [7:0] JB;
    wire [7:0] JC;
    wire [7:0] JXADC;
NICNAC16 nn16 (
    .clk(clk),
    .sw(SW),
    .btnC(btnC),
    .btnU(btnU),
    .btnL(btnL),
    .btnR(btnR),
    .btnD(btnD),
     .led(LED),
    .seg(seg),
    .dp(dp),
    .an(an),
    .JA(JA),
    .JB(JB),
    .JC(JC),
    .JXADC(JXADC)
    
);
reg advance_knobs;
assign btnL = advance_knobs;
assign btnD = pushbutton;
initial begin
    clk=1;

    pushbutton =1'b1; 
   //knob_setting =2'b00;
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
    //knob_setting =2'b11;
    repeat(3) begin
    #3 advance_knobs <= 1'b1;
	#3 advance_knobs <= 1'b0;
	end
	#3
	
	pushbutton <= 1'b0;
    #6
    pushbutton =1'b1; 
 	#6
	// WRITE via console
	SW = 16'h4113;
	
	 repeat(3) begin
    #3 advance_knobs <= 1'b1;
	#3 advance_knobs <= 1'b0;
	end
	//knob_setting =2'b10;
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
    #3 advance_knobs <= 1'b1;
	#3 advance_knobs <= 1'b0;
	
    //knob_setting =2'b11;
	#3
	pushbutton <= 1'b0;
    #3
    pushbutton =1'b1; 
 	#3
    #3 advance_knobs <= 1'b1;
	#3 advance_knobs <= 1'b0;
	
    //  knob_setting =2'b00;
	
	
	
	#16
// LOAD via console
	SW = 16'h0000;
   repeat(3) begin
    #3 advance_knobs <= 1'b1;
	#3 advance_knobs <= 1'b0;
	end
	//  knob_setting =2'b11;
	#3
	pushbutton <= 1'b0;
    #3
    pushbutton =1'b1; 
 	#3

	// READ on console
	 repeat(2) begin
    #3 advance_knobs <= 1'b1;
	#3 advance_knobs <= 1'b0;
	end
	// knob_setting =2'b01;
	 #6
	 pushbutton = 1'b0;
	 #3
	 pushbutton = 1'b1;
	#6
	
	// READ on console
	 pushbutton = 1'b0;
	 #3
	 pushbutton = 1'b1;
	#6
	
	// READ on console
	 pushbutton = 1'b0;
	 #3
	 pushbutton = 1'b1;
	#6
	
	// READ on console
	 pushbutton = 1'b0;
	 #3
	 pushbutton = 1'b1;
	#6
	
	
// LOAD via console
	SW = 16'h0000;
    repeat(2) begin
    #3 advance_knobs <= 1'b1;
	#3 advance_knobs <= 1'b0;
	end
	// knob_setting =2'b11;
	#6
	pushbutton <= 1'b0;
    #3
    pushbutton =1'b1; 
 	#6
	
	
	// RUN MODE
    #3 advance_knobs <= 1'b1;
	#3 advance_knobs <= 1'b0;
	// knob_setting =2'b00;
	 
#32
	SW = 16'hffff;
	
 repeat(3) begin
    #3 advance_knobs <= 1'b1;
	#3 advance_knobs <= 1'b0;
	end
	//	 knob_setting =2'b11;
	#6
	 pushbutton <= 1'b0;
	 #3
    pushbutton =1'b1; 
    #2
     #3 advance_knobs <= 1'b1;
	#3 advance_knobs <= 1'b0;
	//knob_setting =2'b00;
	
	
end
always #0.5 clk =~clk;

//always #700 enable =~ enable; 

    
endmodule
