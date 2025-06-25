library ieee;
use ieee.std_logic_1164.all;

--- Changes state at each rising edge of the clk if T = '1'

entity t_flipflop is
    Port (
        T   : in std_logic;
        Clk : in std_logic;
        Q   : out std_logic;
        Qn  : out std_logic
    );
end t_flipflop;

architecure Behavioral of t_flipflop is
    signal q_int : std_logic := '0';
begin
    process(Clk)
    begin
        if rising_edge(Clk) then
            if T = '1' then
                q_int <= not q_int;
            end if;
        end if;
    end process;

    Q  <= q_int;
    Qn <= not q_int;
end Behavioral;