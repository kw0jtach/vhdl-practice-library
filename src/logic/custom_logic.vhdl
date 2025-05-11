library ieee;
use ieee.std_logic_1164.all;

entity custom_logic is
    Port (
        A : in  std_logic;
        B : in  std_logic;
        C : in  std_logic;
        Y : out std_logic
    );
end custom_logic;

architecture Behavioral of custom_logic is
begin
    Y <= (A and B) or (not C);
end Behavioral;
