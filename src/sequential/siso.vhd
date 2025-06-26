library ieee;
use ieee.std_logic_1164.all;

entity siso is
    generic (N: integer);
    Port (
        Clk : in std_logic;
        RST : in std_logic;
        EN : in std_logic;
        D : in std_Logic;
        Q : out std_logic
    );
end entity siso;

architecture Behavioral of siso is
    signal registers : std_logic_vector(N-1 downto 0);
begin
    Q <= registers(N-1);

    process(Clk, RST)
    begin
        if (RST = '1') then
            registers <= (others => '0');
        elsif (rising_edge(Clk)) then
            if (EN = '1') then
                registers <= registers(N-2 downto 0) & D;
            end if;
        end if;
    end process;

end architecture Behavioral;