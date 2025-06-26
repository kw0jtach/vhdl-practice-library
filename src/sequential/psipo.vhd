library ieee;
use ieee.std_logic_1164.all;

entity psipo is
    generic (N: integer := 4);
    Port (
        Clk : in std_logic;
        RST : in std_logic;
        LOAD : in std_logic;
        SERIAL : in std_logic;
        D : in std_logic_vector(N-1 downto 0);
        Q : out std_logic_vector(N-1 downto 0)
    );
end psipo;

architecture Behavioral of psipo is
    signal registers : std_logic_vector(N-1 downto 0);
begin
    Q <= registers;

    proc: process(Clk, RST)
    begin
        if (RST = '1') then
            registers <= (others => '0');
        elsif (rising_edge(Clk)) then
            if (LOAD = '1') then
                if (SERIAL = '0') then
                    registers <= D;
                elsif (SERIAL = '1') then
                    registers <= registers(N-2 downto 0) & D(0);
                end if;
            end if;
        end if;
    end process proc;

end architecture Behavioral;