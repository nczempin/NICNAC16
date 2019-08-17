

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--The IEEE.std_logic_unsigned contains definitions that allow 
--std_logic_vector types to be used with the + operator to instantiate a 
--counter.
use IEEE.std_logic_unsigned.all;

entity NICNAC16 is
    Port ( SW 			: in  STD_LOGIC_VECTOR (15 downto 0);
           BTN 			: in  STD_LOGIC_VECTOR (4 downto 0);
           CLK 			: in  STD_LOGIC;
           LED 			: out  STD_LOGIC_VECTOR (15 downto 0);
           SSEG_CA 		: out  STD_LOGIC_VECTOR (7 downto 0);
           SSEG_AN 		: out  STD_LOGIC_VECTOR (3 downto 0)
--           pc_out       : out STD_LOGIC_VECTOR (15 downto 0);
--           ac_out       : out STD_LOGIC_VECTOR (15 downto 0);
--           ma_out       : out STD_LOGIC_VECTOR (7 downto 0);
--           MEMORY_READ  : out STD_LOGIC_VECTOR (15 downto 0)			
  );
end NICNAC16;

architecture Behavioral of NICNAC16 is


component debouncer
Generic(
        DEBNC_CLOCKS : integer;
        PORT_WIDTH : integer);
Port(
		SIGNAL_I : in std_logic_vector(4 downto 0);
		CLK_I : in std_logic;          
		SIGNAL_O : out std_logic_vector(4 downto 0)
		);
end component;


constant TMR_CNTR_MAX : std_logic_vector(26 downto 0) := "101111101011110000100000000"; --100,000,000 = clk cycles per second
constant TMR_VAL_MAX : std_logic_vector(3 downto 0) := "1001"; --9

constant RESET_CNTR_MAX : std_logic_vector(17 downto 0) := "110000110101000000";-- 100,000,000 * 0.002 = 200,000 = clk cycles per 2 ms

--This is used to determine when the 7-segment display should be
--incremented
signal tmrCntr : std_logic_vector(26 downto 0) := (others => '0');

--This counter keeps track of which number is currently being displayed
--on the 7-segment.
signal tmrVal : std_logic_vector(3 downto 0) := (others => '0');


--Used to determine when a button press has occured
signal btnReg : std_logic_vector (3 downto 0) := "0000";
signal btnDetect : std_logic;


--Debounced btn signals used to prevent single button presses
--from being interpreted as multiple button presses.
signal btnDeBnc : std_logic_vector(4 downto 0);

signal clk_cntr_reg : std_logic_vector (4 downto 0) := (others=>'0'); 

signal cpu_clk :std_logic :='0';

COMPONENT dunc16 PORT (
   clk: in STD_LOGIC;
  reset: in STD_LOGIC
-- pc_out:out STD_LOGIC_VECTOR (15 downto 0);
-- ac_out:out STD_LOGIC_VECTOR (15 downto 0);
-- ma_out:out STD_LOGIC_VECTOR (15 downto 0);
--  MEMORY_READ:out STD_LOGIC_VECTOR (15 downto 0)
);
END COMPONENT;

begin
Inst_dunc16: dunc16
   port map(
   clk => cpu_clk,
   reset => BTN(4)
);
 
----------------------------------------------------------
------                LED Control                  -------
----------------------------------------------------------

with BTN(4) select
	LED <= SW 			when '0',
			 "0000000000000000" when others;
			 			 
----------------------------------------------------------
------           7-Seg Display Control             -------
----------------------------------------------------------
--Digits are incremented every second, and are blanked in
--response to button presses.

--Individual and reset blanking of Anodes
with BTN(4) select
	SSEG_AN(3 downto 0) <= btnDeBnc(3 downto 0)	when '0',
				  "1111" 			when others;	  			  

--This process controls the counter that triggers the 7-segment
--to be incremented. It counts 100,000,000 and then resets.		  
timer_counter_process : process (CLK)
begin
	if (rising_edge(CLK)) then
		if ((tmrCntr = TMR_CNTR_MAX) or (BTN(4) = '1')) then
			tmrCntr <= (others => '0');
		else
			tmrCntr <= tmrCntr + 1;
		end if;
	end if;
end process;

--This process increments the digit being displayed on the 
--7-segment display every second.
timer_inc_process : process (CLK)
begin
	if (rising_edge(CLK)) then
		if (BTN(4) = '1') then
			tmrVal <= (others => '0');
			cpu_clk <= '0';
		elsif (tmrCntr = TMR_CNTR_MAX) then
		cpu_clk <= not cpu_clk;
		tmrVal(0) <=  cpu_clk;
--		tmrVal <= tmrVal + 1;
--			if (tmrVal = TMR_VAL_MAX) then
--				tmrVal <= (others => '0');
--			else
--				tmrVal <= tmrVal + 1;
--			end if;
		end if;
	end if;
end process;

--This select statement encodes the value of tmrVal to the necessary
--cathode signals to display it on the 7-segment
with tmrVal select
	SSEG_CA <=    "11000000" when "0000",
				  "11111001" when "0001",
				  "10100100" when "0010",
				  "10110000" when "0011",
				  "10011001" when "0100",
				  "10010010" when "0101",
				  "10000010" when "0110",
				  "11111000" when "0111",
				  "10000000" when "1000",
				  "10010000" when "1001",
				  "11111111" when others;


----------------------------------------------------------
------              Button Control                 -------
----------------------------------------------------------
--Buttons are debounced and their rising edges are detected
--to trigger UART messages


--Debounces btn signals
Inst_btn_debounce: debouncer 
    generic map(
        DEBNC_CLOCKS => (2**16),
        PORT_WIDTH => 5)
    port map(
		SIGNAL_I => BTN,
		CLK_I => CLK,
		SIGNAL_O => btnDeBnc
	);

			 
--Registers the debounced button signals, for edge detection.
btn_reg_process : process (CLK)
begin
	if (rising_edge(CLK)) then
		btnReg <= btnDeBnc(3 downto 0);
	end if;
end process;

end Behavioral;
