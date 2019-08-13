library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity box is
Port ( A : in STD_LOGIC;
B : in STD_LOGIC;
C : out STD_LOGIC);
end box;
architecture Behavioral of box is

COMPONENT gate PORT (
A : in std_logic;
B : in std_logic;
C : out std_logic);
END COMPONENT;

begin

GATE_INST: gate

port map (
A => A,
B => B,
C => C);
end Behavioral;