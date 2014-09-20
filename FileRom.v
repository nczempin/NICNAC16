`timescale 1ns / 1ps
// Verilog-95 style
// ROM module using two dimensional arrays with 
// memory defined in text file with $readmemb or $readmemh
// NOTE: This style can lead to simulation/synthesis mismatch
//       if the content of data file changes after synthesis
module FileRom (ADDRESS, VALUE);
  output [15:0] VALUE;
  input  [7:0] ADDRESS; 
  // declares a memory rom of 8 4-bit registers.
  //The indices are 0 to 7
  //(* synthesis, rom_block = "ROM_CELL XYZ01" *)
  reg    [15:0] rom[0:7]; 
  // NOTE:  To infer combinational logic instead of a ROM, use
  // (* synthesis, logic_block *)
 
intial begin
    rom[0] =  16'b0001000000000011;
    rom[1] = 16'b1111111111111111;
    rom[2] = 16'b1111111111111111;
    rom[3] = 16'b0100000000000001;
    rom[4] = 16'b0101001000000000;
    rom[5] = 16'b0001000000000011;
    rom[6] = 16'b0000000000000000;
    rom[7] = 16'b0000000000000000;
end
  assign VALUE = rom[ADDRESS];
endmodule

