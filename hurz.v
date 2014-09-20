`timescale 1ns / 1ps
module ROM (ADDRESS, VALUE);
 input  [7:0]ADDRESS; 
 output [15:0] VALUE;
 // declares a memory rom of 8 4-bit registers.
  //The indices are 0 to 7
  //(* synthesis, rom_block = "ROM_CELL XYZ01" *)
 reg    [15:0]rom[0:7]; 
 integer i;
 // NOTE: To infer combinational logic instead of a ROM, use
 // (* synthesis, logic_block *)

initial begin
        $readmemb("../rom.txt", rom);
              for(i = 0; i < 8; i = i + 1)
              $display("memory[%d] = %b", i[4:0], rom[i]);
           end
assign VALUE = rom[ADDRESS];
endmodule
