library ieee;
use ieee.std_logic_1164.all;

entity siso_tb is
end entity siso_tb;

architecture behavior of siso_tb is
    component siso is
        generic (N: integer);
        Port (
            Clk : in std_logic;
            RST : in std_logic;
            EN : in std_logic;
            D : in std_logic;
            Q : out std_logic
        );
    end component;

    signal Clk : std_logic := '1';
    signal RST : std_logic := '0';
    signal EN : std_logic := '1';
    signal D : std_logic;
    signal Q : std_logic;

    constant Clk_period : time := 10 ns;

begin
    uut: siso
        generic map (N => 8)
        port map (
            Clk => Clk,
            RST => RST,
            EN => EN,
            D => D,
            Q => Q
        );

    Clk_process: process
    begin
        Clk <= not Clk;
        wait for Clk_period / 2;
    end process;

    D_proc: process
    begin
        D <= '1';
        wait for 14 ns;
        D <= '0';
        wait for 7 ns;
    end process;

    EN_RST_proc: process
    begin
        wait for 210 ns;
        EN <= '0';
        wait for 20 ns;
        RST <= '1';
    end process;
end behavior;