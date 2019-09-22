`timescale 1ns / 1ps


module control_knob_tb(
);
    reg clk;

    reg [1:0] knob_setting;
    reg CONCY1;
    reg reset;
    reg HALT;
    wire RUN_CY;
    wire RUN_MODE;
    
    
     control_knob ck(
    .reset(reset),
    .HALT(HALT),
    .knob_setting(knob_setting),
    .RUN_CY(RUN_CY),
    .RUN_MODE(RUN_MODE),
    .CONCY1(CONCY1)
    );
    
    
    
initial begin
    clk=1;

    CONCY1=1'b0;
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
	 #2
	 CONCY1=1'b1;
	 #20
	 CONCY1 = 1'b0;



end
always #0.5 clk =~clk;

endmodule
