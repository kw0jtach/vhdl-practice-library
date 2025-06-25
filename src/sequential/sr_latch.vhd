library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sr_latch is
    Port (
        S : in std_logic;
        R : in std_logic;
        Q : out std_logic;
        Qn : out std_logic
    );
end sr_latch;

architecture Behavioral of sr_latch is
    signal q_int : std_logic := '0';

begin
    process(S, R)
    begin
        if (S = '0' and R = '0') then
            -- Nothing changes
            null;
        elsif (S = '0' and R = '1') then
            q_int <= '0';
        elsif (S = '1' and R = '0') then
            q_int <= '1';
        else
            -- Forbidden state
            q_int <= 'X';
        end if;
    end process;

    Q  <= q_int;
    Qn <= not q_int;
end Behavioral;