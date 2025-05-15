library ieee;
use ieee.std_logic_1164.all;

entity mux_2to1 is
    Port (
        A : in std_logic;
        B : in std_logic;
        S : in std_logic;
        Y : out std_logic
    );
end mux_2to1;

architecture Behavioral of mux_2to1 is
begin
    Y <= A when S = '0' else B;
end Behavioral;