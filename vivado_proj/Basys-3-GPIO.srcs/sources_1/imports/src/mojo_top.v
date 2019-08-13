module mojo_top(
    // 50MHz clock input
    input clk,
    // Input from reset button (active low)
    input rst_n,   
	 input inin,
	 // Outputs to the 8 onboard LEDs
    output[7:0]data,
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

wire I_STA;
wire SETWRITE;
wire CLRWRITE;
wire WRITE;

wire [15:0] MD_OUT;
wire [15:0] AC_OUT;
wire [15:0] MMO;

assign led = MMO[7:0];
dunc16 myDunc16 (
	.CLK(clk),
	.ININ(inin),
	.I_STA( I_STA   ), 
	.SETWRITE( SETWRITE   ), 
	.CLRWRITE(  CLRWRITE  ), 
	.WRITE(WRITE),
	.MD_OUT( MD_OUT   ),
	.AC_OUT( AC_OUT   ),
	.MMO( MMO   ),
	.RESET(rst)
	
   );
endmodule