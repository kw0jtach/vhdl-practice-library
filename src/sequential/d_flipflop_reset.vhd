library ieee;
use ieee.std_logic_1164.all;

entity d_flipflop_reset is
    Port (
        D : in std_logic;
        Clk : in std_logic;
        AR : in std_logic;
        SR : in std_logic;
        Q : out std_logic;
        Qn : out std_logic
    );
end d_flipflop_reset;

architecture Behavioral of d_flipflop_reset is
    signal q_int : std_logic := '0';
begin
    process(Clk, AR)
    begin
        if AR = '1' then
            q_int <= '0';
        elsif rising_edge(Clk) then
            if SR = '1' then
                q_int <= '0';
            else
                q_int <= 'D';
            end if;
        end if;
    end process;

    Q <= q_int;
    Qn <= not q_int;
end Behavioral;