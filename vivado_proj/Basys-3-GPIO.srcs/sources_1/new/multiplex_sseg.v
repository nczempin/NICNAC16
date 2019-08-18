`timescale 1ns / 1ps
module multiplex_sseg(
 input clk,
 input [7:0] in0,
 input [7:0] in1,
 input [7:0] in2,
 input [7:0] in3,
 output reg [7:0] sseg,
 output reg [3:0] an
 );
 
localparam N = 21;
 
reg [N-1:0] count; 
 
always @ (posedge clk)
 begin
   count <= count + 1;
 end

always @ (*)
 begin
  case(count[N-1:N-2]) //using only the 2 MSB's of the counter 
    
   2'b00 :  //When the 2 MSB's are 00 enable the fourth display
    begin
     sseg = in0;
     an <= 4'b1110;
    end
    
   2'b01:  //When the 2 MSB's are 01 enable the third display
    begin
     sseg = in1;
     an  <= 4'b1101;
    end
    
   2'b10:  //When the 2 MSB's are 10 enable the second display
    begin
     sseg = in2;
     an <= 4'b1011;
    end
     
   2'b11:  //When the 2 MSB's are 11 enable the first display
    begin
     sseg = in3;
     an <= 4'b0111;
    end
  endcase
 end

endmodule