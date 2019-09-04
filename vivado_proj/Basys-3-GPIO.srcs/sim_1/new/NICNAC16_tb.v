`timescale 10ns / 10ps

module NICNAC16_tb ();
reg clk, reset;

//reg enable;
//wire t0, t1, t2, t3;
//wire fetch, execute;

//wire[15:0] pc_out, ma_out; 
//wire [15:0] md_out;
//wire[15:0] ac_out;
//wire[3:0] ir_out;
//wire [15:0] alu_out;
//wire incr_pc;

//wire [15:0] PC_IN;

//wire I_NOP, I_JMP, I_LDA, I_STA, I_ADD;
//wire EN_IR, EN_PC, EN_MA, EN_MD, EN_AC;

//wire do_jump;

//wire [15:0] MEMORY_READ;

wire SW;
wire BTN;
wire LED;
wire SSEG_CA;
wire SSEG_AN;
NICNAC16 nn16 (
    .clk_fpga(clk),
    .SW(SW),
    .BTN(BTN),
    .LED(LED),
    .SSEG_CA(SSEG_CA),
    .SSEG_AN(SSEG_AN)   
);

initial begin
clk=1;
//enable = 0;
//md_out = 0;


	//start reset

	reset = 1'b1;
	
		#4
	reset = 1'b0;
	// end reset
	

end
always #1 clk =~clk;

//always #700 enable =~ enable; 

    
endmodule
