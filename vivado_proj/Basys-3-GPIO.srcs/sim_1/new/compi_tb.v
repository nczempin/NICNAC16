`timescale 10ns / 1ps

module compi_tb ();
reg clk, reset;

compi c(
    .clk(clk),
    .reset(reset)
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
