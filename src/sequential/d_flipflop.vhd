library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity d_flipflop is
    Port (
        D   : in std_logic;
        Clk : in std_logic;
        Q   : out std_logic;
        Qn  : out std_logic   
    );
end d_flipflop;

architecture Behavioral of d_flipflop is
begin
    process(Clk)
    begin
        if rising_edge(Clk) then
            Q  <= D;
            Qn <= not D; 
        end if;
    end process;
end Behavioral;