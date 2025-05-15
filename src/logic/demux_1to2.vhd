library ieee;
use ieee.std_logic_1164.all;

entity demux_1to2 is
    Port (
        D : in std_logic;
        S : in std_logic;
        Y1 : out std_logic;
        Y2 : out std_logic
    );
end demux_1to2;

architecture Behavioral of demux_1to2 is
begin
    process(D, S)
    begin
        case S is
            when '0' =>
                Y1 <= D;
                Y2 <= '0';
            when '1' =>
                Y1 <= '0';
                Y2 <= D;
            when others =>
                Y1 <= '0';
                Y2 <= '0';
        end case;
    end process;
end Behavioral;