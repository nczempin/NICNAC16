`timescale 1ns / 1ps

module sseg_hex_decoder(
 input [3:0] digit,
 output reg [6:0] segments
 );

          always @(digit)
      case (digit)
          4'b0000 : segments = 7'b1000000;   // 0
          4'b0001 : segments = 7'b1111001;   // 1
          4'b0010 : segments = 7'b0100100;   // 2
          4'b0011 : segments = 7'b0110000;   // 3
          4'b0100 : segments = 7'b0011001;   // 4
          4'b0101 : segments = 7'b0010010;   // 5
          4'b0110 : segments = 7'b0000010;   // 6
          4'b0111 : segments = 7'b1111000;   // 7
          4'b1000 : segments = 7'b0000000;   // 8
          4'b1001 : segments = 7'b0010000;   // 9
          4'b1010 : segments = 7'b0001000;   // A
          4'b1011 : segments = 7'b0000011;   // b
          4'b1100 : segments = 7'b1000110;   // C
          4'b1101 : segments = 7'b0100001;   // d
          4'b1110 : segments = 7'b0000110;   // E
          4'b1111 : segments = 7'b0001110;   // F
          default : segments = 7'b1111111; //can't happen
      endcase   
endmodule

//for chess coordinates:

//8x8 coordinates (e. g. chess board)
//SSEG_CA <=   
//11111001" when "0000",
//10100100" when "0001",
//10110000" when "0010",
//10011001" when "0011",
//10010010" when "0100",
//10000010" when "0101",
//11111000" when "0110",
//10000000" when "0111",
//10001000" when "1000",
//10000011" when "1001",
//-				  "11000110" when "1010",
//-				  "10100001" when "1011",
//10000110" when "1100",
//10001110" when "1101",
//10010000" when "1110",
//10001011" when "1111",
//01111111" when others; -- not really any others
