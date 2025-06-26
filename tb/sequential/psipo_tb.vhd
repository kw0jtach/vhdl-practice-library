library ieee;
use ieee.std_logic_1164.all;

entity psipo_tb is
end psipo_tb;

architecture behavior of psipo_tb is
    component psipo is 
        generic (N: integer);
        Port (
            Clk : in std_logic;
            RST : in std_logic;
            LOAD : in std_logic;
            SERIAL : in std_logic;
            D : in std_logic_vector(N-1 downto 0);
            Q : out std_logic_vector(N-1 downto 0)
        );
    end component;

    signal Clk : std_logic := '1';
    signal RST : std_logic := '1';
    signal LOAD : std_logic := '1';
    signal SERIAL : std_logic;
    signal D : std_logic_vector(7 downto 0);
    signal Q : std_logic_vector(7 downto 0);

    constant Clk_period : time := 10 ns;

begin
    uut: psipo generic map (N => 8)
                port map(
                    Clk => Clk, 
                    RST => RST, 
                    LOAD => LOAD,
                    SERIAL => SERIAL,
                    D => D,
                    Q => Q
                );

    clk_proc: process
    begin
        Clk <= not Clk;
        wait for Clk_period / 2;
    end process;

    D_proc: process
    begin
        D <= "00100100";
        wait for 12 ns;
        D <= "10000000";
        wait for 12 ns;
        D <= "11111111";
        wait for 12 ns;
        D <= "01010110";
        wait for 12 ns;
    end process;

    EN_proc: process
    begin
        wait for 100 ns;
        LOAD <= '0';
    end process;

    RST_proc: process
    begin
        wait for 5 ns;
        RST <= '0';
        wait for 140 ns;
        RST <= '1';
    end process;
    
    SERIAL_proc: process
    begin
        SERIAL <= '0';
        wait for 50 ns;
        SERIAL <= '1';
        wait for 50 ns;
    end process;

end behavior;