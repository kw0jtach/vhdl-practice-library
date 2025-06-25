library ieee;
use ieee.std_logic_1164.all;

entity t_flipflop_tb is
end t_flipflop_tb;

architecture behavior of t_flipflop_tb is
    signal T     : std_logic := '0';
    signal Clk   : std_logic := '1';
    signal Q, Qn : std_logic;

    constant Clk_period : time := 10 ns;

    component t_flipflop
        Port (
            T   : in std_logic;
            Clk : in std_logic;
            Q   : out std_logic;
            Qn  : out std_logic
        );
    end component;

begin
    uut: t_flipflop port map(
        T   => T,
        Clk => Clk,
        Q   => Q,
        Qn  => Qn
    );

    clk_proc: process
        Clk <= not Clk;
        wait for Clk_period / 2;
    end process;

    stim_proc: process
    begin
        T <= '0'; wait for 20 ns;

        T <= '1'; wait for 40 ns;

        T <= '0'; wait for 20 ns;

        wait;
    end process;

end behavior;