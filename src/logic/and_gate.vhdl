library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate is
    Port (
        A : in std_logic;
        B : in std_logic;
        Y : out std_logic
    );
end and_gate;

architecture Behavioral of and_gate is
begin
    Y <= A and B;
end Behavioral;