`timescale 1ns / 1ps


module console_tb(
);
    reg clk;

    reg [1:0] knob_setting;
     reg reset;
    reg HALT;
    
    reg t3;
    reg pushbutton;
    wire CONCY1;
   wire CONCY2;
    
    wire RUN_CY;
    wire RUN_MODE;
    
    
 console myconsole(
  .t3(t3),
    .clk(clk),
    .reset(reset),
    .pushbutton(pushbutton),
    .knob_setting(knob_setting),
    .CONCY1(CONCY1),
    .CONCY2(CONCY2),
    .RUN_MODE(RUN_MODE),
    .RUN_CY(RUN_CY)

    ); 
    
    
    
initial begin
    clk=1;
t3=1'b0;
pushbutton=1'b1;
    HALT = 1'b0;
   knob_setting =2'b00;
	reset = 1'b1;
	
		#4
	reset = 1'b0;
	
	#30
	 knob_setting =2'bz;
	 #2
	 knob_setting =2'b01;
	#30
	 knob_setting =2'bz;
	 #2
	 knob_setting =2'b10;
	#30
	 knob_setting =2'bz;
	 #2
	 knob_setting =2'b11;
	 	#30
	 knob_setting =2'bz;
	 #2
	 knob_setting =2'b00;
	


end
always #0.5 clk =~clk;
always begin 
    #4 t3 = 1'b1;
    #1 t3 = 1'b0;
end
endmodule
