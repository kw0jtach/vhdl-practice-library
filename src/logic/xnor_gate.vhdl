library ieee;
use ieee.std_logic_1164.all;

entity xnor_gate is
    port(
        A : in std_logic;
        B : in std_logic;
        Y : out std_logic
    );
end xnor_gate;

architecture Behavioral of xnor_gate is
begin
    Y <= not (A xor B);
end Behavioral;