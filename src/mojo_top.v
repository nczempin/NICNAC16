module mojo_top(
    // 50MHz clock input
    input clk,
    // Input from reset button (active low)
    input rst_n,   
	 // Outputs to the 8 onboard LEDs
    output[7:0]led
// cclk input from AVR, high when AVR is ready
	/*input cclk,
     // AVR SPI connections
    output spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    // AVR ADC channel select
    output [3:0] spi_channel,
    // Serial connections
    input avr_tx, // AVR Tx => FPGA Rx
    output avr_rx, // AVR Rx => FPGA Tx
    input avr_rx_busy // AVR Rx buffer full
*/    );

wire rst = ~rst_n; // make reset active high
/*
// these signals should be high-z when not used
assign spi_miso = 1'bz;
assign avr_rx = 1'bz;
assign spi_channel = 4'bzzzz;
*/
wire EXECUTE;
assign EXECUTE = 1;
wire I_STA;
wire SETWRITE;
wire T0;

assign T0 = 1;

assign led[5:0] = 6'b101010; 
assign led[7] = I_STA;
assign led[6] = SETWRITE;
dunc16 myDunc16 (
	.CLK(clk),
	.I_STA( I_STA   ), 
	.EXECUTE(  EXECUTE  ), 
	.T0(  T0  ), 
	.SETWRITE( SETWRITE   ), 
	.CLRWRITE(  CLRWRITE  ), 
	.T1(  T1  ), 
	.MD_OUT( MD_OUT   ),
	.AC_OUT( AC_OUT   ),
	.RESET(rst)
	
   );
endmodule