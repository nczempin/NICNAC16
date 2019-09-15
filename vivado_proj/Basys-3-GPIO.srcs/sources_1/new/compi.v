`timescale 1ns / 1ps

module compi(
    input clk,
    input reset
);
     
    
    
 

  wire en_mem_write;
  wire [15:0] mem_read;
  wire [15:0] mem_write;
  wire [15:0] mem_address;

 wire [15:0] led_out;
 wire [15:0] status;
    dunc16 mycpu (
        .clk(clk), 
        .reset(reset),
         .led_out(led_out),
        .status(status),
        .en_mem_write(en_mem_write),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .mem_address(mem_address)
  );
   Memory romram(
    .clk(clk),
    .en_mem_write(en_mem_write),
    .mem_read(mem_read),
    .mem_write(mem_write),
    .mem_address(mem_address)
    );
endmodule

