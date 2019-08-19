

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--The IEEE.std_logic_unsigned contains definitions that allow 
--std_logic_vector types to be used with the + operator to instantiate a 
--counter.
use IEEE.std_logic_unsigned.all;

entity NICNUC16 is
    Port ( SW 			: in  STD_ULOGIC_VECTOR (15 downto 0);
           BTN 			: in  STD_ULOGIC_VECTOR (4 downto 0);
           CLK 			: in  STD_LOGIC;
           LED 			: out  STD_ULOGIC_VECTOR (15 downto 0);
           SSEG_CA 		: out  STD_ULOGIC_VECTOR (7 downto 0);
           SSEG_AN 		: out  STD_ULOGIC_VECTOR (3 downto 0)
--           LED_OUT       : out STD_LOGIC_VECTOR (15 downto 0);
--           ac_out       : out STD_LOGIC_VECTOR (15 downto 0);
--           ma_out       : out STD_LOGIC_VECTOR (7 downto 0);
--           MEMORY_READ  : out STD_LOGIC_VECTOR (15 downto 0)			
  );
end NICNUC16;

architecture Behavioral of NICNUC16 is



constant TMR_CNTR_MAX : STD_LOGIC_VECTOR(26 downto 0) := "101111101011110000100000000"; --100,000,000 = clk cycles per second
constant TMR_VAL_MAX : STD_ULOGIC_VECTOR(3 downto 0) := "1111"; --0xF

constant RESET_CNTR_MAX : STD_ULOGIC_VECTOR(17 downto 0) := "110000110101000000";-- 100,000,000 * 0.002 = 200,000 = clk cycles per 2 ms

--This is used to determine when the 7-segment display should be
--incremented
signal tmrCntr : STD_LOGIC_VECTOR(26 downto 0) := (others => '0');

--This counter keeps track of which number is currently being displayed
--on the 7-segment.
signal tmrVal : STD_ULOGIC_VECTOR(3 downto 0) := (others => '0');


--Used to determine when a button press has occured
signal btnReg : STD_ULOGIC_VECTOR (3 downto 0) := "0000";
signal btnDetect : STD_ULOGIC;


--Debounced btn signals used to prevent single button presses
--from being interpreted as multiple button presses.
signal btnDeBnc : STD_ULOGIC_VECTOR(4 downto 0);
signal fba : STD_ULOGIC_VECTOR(3 downto 0);

signal clk_cntr_reg : STD_ULOGIC_VECTOR (4 downto 0) := (others=>'0'); 

signal cpu_clk :STD_ULOGIC :='0';

signal LED_OUT: STD_ULOGIC_VECTOR (15 downto 0):= (others=>'0');
--signal AC_OUT: STD_ULOGIC_VECTOR (15 downto 0);
--signal MA_OUT: STD_ULOGIC_VECTOR (15 downto 0);
--signal MEMORY_READ: STD_ULOGIC_VECTOR (15 downto 0);
--signal led_connection: STD_ULOGIC_VECTOR (15 downto 0);


----------------------------------------------------------
------              Button Control                 -------
----------------------------------------------------------
--Buttons are debounced and their rising edges are detected


component debouncer
Generic(
        DEBNC_CLOCKS : integer;
        PORT_WIDTH : integer);
Port(
		SIGNAL_I : in STD_ULOGIC_VECTOR(4 downto 0);
		CLK_I : in STD_ULOGIC;          
		SIGNAL_O : out STD_ULOGIC_VECTOR(4 downto 0)
		);
end component;


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
