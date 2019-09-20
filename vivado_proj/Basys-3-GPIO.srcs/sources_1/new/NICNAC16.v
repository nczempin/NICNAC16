`timescale 1ns / 1ps

 module input_device(
     input [4:0] address,
     input [5:0] control,
     output reg [15:0] value,
     output reg grab_bus
     );
    always @(address)
 if (address == 7) begin
    value <= 16'hbeef;
    grab_bus <= 1'b1;
   end else begin
    value <= 16'bz;
    grab_bus <= 1'b0;
  end
endmodule
module NICNAC16(
    input clk_fpga,
    input [15:0] SW,
    input [4:0] BTN,
    output [15:0] LED,
    output [7:0] SSEG_CA,
    output [3:0] SSEG_AN
);
    wire reset;
    wire status;
     
    wire clk_cpu;
    wire [15:0] led_out;
    
    assign reset = BTN[4];
  wire [4:0] DEVADDRESS;
   wire [5:0] DEVCTRL;
 
    wire [3:0] sseg_dp;
    assign sseg_dp ={clk_cpu, status, 2'b11};
    sseg_interface16b si16(
    .clk(clk_fpga),
    .data(led_out),
    .decimal_points(sseg_dp),
    .sseg_ca( SSEG_CA),
    .sseg_an( SSEG_AN)
    );
 
    assign LED =led_out;
wire cd_out;
    clock_divider cd(
        .clk_in(clk_fpga),
        .reset(reset),
        .clk_out(cd_out)
     );
    assign clk_cpu = clk_fpga;
   wire [15:0] device_out;
   wire device_active;
 input_device id (
 .address(DEVADDRESS),
  .control(DEVCTRL),
     .value(device_out),
     .grab_bus(device_active)
 );
 
   wire [15:0] IODATA_BUS;
   assign IODATA_BUS = device_out;
   wire out_r_in;
   wire out_r_address_decoded;
   assign out_r_address_decoded = DEVADDRESS == 5'h1c;
   wire INP,OUTP;
    assign out_r_in = ~(out_r_address_decoded & OUTP); //NAND, we are looking for rising edge
  wire [15:0] latched_data;
  FD16CE out_register(
  .D(IODATA_BUS),
  .Q(latched_data),
  .CE(1'b1),
  .C(out_r_in),
  .CLR(reset)
  );
 
   compi c(
    .clk(clk_cpu),
    .reset(reset),
    .IODATA_BUS(IODATA_BUS),
    .DEVADDRESS(DEVADDRESS),
    .DEVCTRL(DEVCTRL),
    .OUTP(OUTP),
    .INP(INP)
   );
   
    
endmodule
