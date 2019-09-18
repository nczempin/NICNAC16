`timescale 10ns / 1ps

module compi_tb ();
   reg clk, reset;
   wire [15:0] IODATA_BUS;
   wire [4:0] DEVADDRESS;
   wire [5:0] DEVCTRL;
   compi c(
    .clk(clk),
    .reset(reset),
    .IODATA_BUS(IODATA_BUS),
    .DEVADDRESS(DEVADDRESS),
    .DEVCTRL(DEVCTRL)
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
