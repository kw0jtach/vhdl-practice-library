library ieee;
use ieee.std_logic_1164.all;

entity mux_4to1 is
    Port (
        D0 : in std_logic;
        D1 : in std_logic;
        D2 : in std_logic;
        D3 : in std_logic;
        S : in std_logic_vector(1 downto 0);
        Y : out std_logic
    );
end mux_4to1;


architecture Behavioral of mux_4to1 is
begin
    process(D0, D1, D2, D3, S)
    begin
        case S is
            when "00" => Y <= D0;
            when "01" => Y <= D1;
            when "10" => Y <= D2;
            when "11" => Y <= D3;
            when others => Y <= '0';
        end case;
    end process;
end Behavioral;