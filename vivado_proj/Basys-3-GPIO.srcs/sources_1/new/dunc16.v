`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/12/2019 11:00:21 PM
// Design Name: 
// Module Name: dunc16
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module counter (  input clk,               // Declare input port for clock to allow counter to count up
                  input rstn,              // Declare input port for reset to allow the counter to be reset to 0 when required
                  output reg[15:0] out);    // Declare 16-bit output port to get the counter values
 
  // This always block will be triggered at the rising edge of clk (0->1)
  // Once inside this block, it checks if the reset is 0, if yes then change out to zero
  // If reset is 1, then design should be allowed to count up, so increment counter
  always @ (posedge clk) begin
//    if ( rstn)
//      out <= 0;
//    else 
      out <= out + 1;
  end
endmodule
module dunc16(clk, reset, hurz);//, ac_out,ma_out, MEMORY_READ );
//module dunc16(clk, reset, four_bits_out );
input clk, reset;
//
output  [15:0]hurz;

counter c ( .clk (clk),
                 .rstn (reset),
                 .out (hurz));



wire [15:0] pc_out;

//output[15:0] ac_out;
//output[15:0]  ma_out; 
//input [15:0] MEMORY_READ;
//wire[15:0] pc_out;
wire[15:0] ac_out;
wire[15:0]  ma_out; 
wire [15:0] MEMORY_READ;
wire [3:0] fbo;

//assign four_bits_out = pc_out[3:0];
//assign hurz = pc_out;
//reg enable;
wire t0, t1, t2, t3;
wire fetch, execute;

wire [15:0] md_out;
wire[3:0] ir_out;
wire [15:0] alu_out;
wire incr_pc;

wire [15:0] PC_IN;

wire I_NOP, I_JMP, I_LDA, I_STA, I_ADD;
wire EN_IR, EN_PC, EN_MA, EN_MD, EN_AC;

wire do_jump;


datapath dp (
   .clk(0),
   .reset(0),
   .fetch(fetch),
   .execute(execute),
   .incr_pc(incr_pc),
   .PC_IN(PC_IN),
   .t0(t0),
   .t1(t1),
   .t2(t2),
   .t3(t3),
   .pc_out(pc_out),
   .ir_out(ir_out),
   .ma_out(ma_out),
   .md_out(md_out),
   .ac_out(ac_out),
   .alu_out(alu_out),
   .MEMORY_READ(MEMORY_READ),
   .I_NOP(I_NOP),
   .I_JMP(I_JMP),
   .I_LDA(I_LDA),
   .I_STA(I_STA),
   .I_ADD(I_ADD),
   .EN_IR(EN_IR),
   .EN_PC(EN_PC),
   .EN_MA(EN_MA),
   .EN_MD(EN_MD),
   .EN_AC(EN_AC),
   .DO_JUMP(do_jump)
   );
 

control_unit cu( 
    .clk(clk),
    .reset(reset),
    .fetch(fetch),
    .execute(execute),
    .t0(t0),
    .t1(t1),
    .t2(t2),
    .t3(t3),
    .I_JMP(I_JMP),
    .I_NOP(I_NOP),
    .I_LDA(I_LDA),
    .I_STA(I_STA),
    .I_ADD(I_ADD),
    .incr_pc(incr_pc),
    .do_jump(do_jump),
    .EN_IR(EN_IR),
    .EN_PC(EN_PC),
    .EN_MA(EN_MA),
    .EN_MD(EN_MD),
    .EN_AC(EN_AC)


);
    
endmodule
