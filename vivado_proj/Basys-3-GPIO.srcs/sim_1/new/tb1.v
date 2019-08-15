`timescale 10us / 10ns

module testbench_system_timing ();
reg clk, reset, enable;
wire t0, t1, t2, t3;
wire fetch, execute;

wire[15:0] pc_out, ma_out; 
reg [15:0] md_out;
wire[15:0] ac_out;
wire[3:0] ir_out;
wire incr_pc;

wire [15:0] PC_IN;

wire I_NOP, I_JMP;
wire EN_IR, EN_PC, EN_MA;

wire do_jump;

initial begin
clk=1;
enable = 0;
md_out = 0;


	//start reset

	reset = 1'b1;
	
		#4
	reset = 1'b0;
	// end reset
	

end
always #1 clk =~clk;

always #700 enable =~ enable; 
always @(pc_out)
begin
  if (pc_out == 7)
     md_out = 16'b0001_0000_0000_0010;
  else
     md_out =0;
end

datapath dp (
   .clk(clk),
   .reset(reset),
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
   .I_NOP(I_NOP),
   .I_JMP(I_JMP),
   .EN_IR(EN_IR),
   .EN_PC(EN_PC),
   .EN_MA(EN_MA),
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
    .incr_pc(incr_pc),
    .do_jump(do_jump),
    .EN_IR(EN_IR),
    .EN_PC(EN_PC),
    .EN_MA(EN_MA)
);
    
endmodule
