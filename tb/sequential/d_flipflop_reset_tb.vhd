library ieee;
use ieee.std_logic_1164.all;

entity d_flipflop_reset_tb is
end d_flipflop_reset_tb;

architecture behavior of d_flipflop_reset_tb is
    signal D, AR, SR : std_logic := '0';
    signal Clk : std_logic := '1';
    signal Q, Qn : std_logic;

    constant Clk_period : time := 10 ns;

    component d_flipflop_reset
        Port (
            D : in std_logic;
            Clk : in std_logic;
            AR : in std_logic;
            SR : in std_logic;
            Q : out std_logic;
            Qn : out std_logic
        );
    end component;

begin
    uut: d_flipflop_reset port map(
        D => D,
        Clk => Clk,
        AR => AR,
        SR => SR,
        Q => Q,
        Qn => Qn
    );

    clk_proc: process
    begin
        Clk <= not Clk;
        wait for Clk_period / 2;
    end process;

    stim_proc: process
    begin
        D <= '1'; wait for 10 ns;

        SR <= '1'; wait for 10 ns;
        SR <= '0'; wait for 10 ns;

        D <= '0'; wait for 10 ns;

        AR <= '1'; wait for 7 ns;
        AR <= '0'; wait for 3 ns;

        D <= '1'; wait for 10 ns;

        wait;
    end process;
end behavior;