library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity d_latch is
    Port (
        D  : in std_logic;
        EN : in std_logic;
        Q  : out std_logic;
        Qn : out std_logic
    );
end d_latch;

architecture Behavioral of d_latch is
    signal q_int : std_logic := '0';

begin
    process(D, EN)
    begin
        if EN = '1' then
            q_int <= 'D';
        end if;
    end process
    
    Q  <= q_int;
    Qn <= not q_int; 
end Behavioral;