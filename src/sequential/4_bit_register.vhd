library ieee;
use ieee.std_logic_1164.all;

entity 4_bit_register is
    Port (
        D   : in std_logic_vector(3 downto 0);
        Clk : in std_logic;
        RST : in std_logic;
        Q   : out std_logic_vector(3 downto 0);
    );
end 4_bit_register;

architecture Behavioral of 4_bit_register is
begin
    process(Clk, RST)
    begin
        if RST = '1' then -- Asynchronous reset
            Q <= (others => '0');
        elsif rising_edge(Clk) then
            Q <= D;
        end if;
    end process;
end Behavioral;