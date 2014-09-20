`timescale 1ns / 1ps
module ROM (ADDRESS, VALUE);
 input  [7:0]ADDRESS; 
 output [15:0] VALUE;
 // declares a memory rom of 8 4-bit registers.
  //The indices are 0 to 7
  //(* synthesis, rom_block = "ROM_CELL XYZ01" *)
 reg    [15:0]rom[0:7]; 
 // NOTE: To infer combinational logic instead of a ROM, use
 // (* synthesis, logic_block *)
initial begin
rom[0] = 16'b0001000000000011;
rom[1] = 16'b1010101010101010;
rom[2] = 16'b0101010101010101;
rom[3] = 16'b0100000000000001;
rom[4] = 16'b0101001000000000;
rom[5]=16'b0001000000000011;
rom[6] = 16'b0000000000000000;
rom[7] = 16'b0000000000000000;
end
assign VALUE = rom[ADDRESS];
endmodule
