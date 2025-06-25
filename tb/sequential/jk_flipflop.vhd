library ieee;
use ieee.std_logic_1164.all;

entity jk_flipflop_tb is
end jk_flipflop_tb;

architecture behavior of jk_flipflop_tb is
    signal J, K  : std_logic := '0';
    signal Clk   : std_logic := '1';
    signal Q, Qn : std_logic;

    constant Clk_period : time := 10 ns;

    component jk_flipflop
        Port (
            J   : in std_logic;
            K   : in std_logic;
            Clk : in std_logic;
            Q   : out std_logic;
            Qn  : out std_logic
        );
    end component;

begin
    uut: jk_flipflop port map(
        J   => J,
        K   => K,
        Clk => Clk,
        Q   => Q,
        Qn  => Qn
    );

    clk_proc: process
    begin
        Clk <= not Clk;
        wait for Clk_period / 2;
    end process;

    stim_proc: process
    begin
        J <= '0'; K <= '0'; wait for 10 ns;

        J <= '1'; K <= '0'; wait for 10 ns;

        J <= '0'; K <= '1'; wait for 10 ns;

        J <= '1'; K <= '1'; wait for 40 ns;

        J <= '0'; K <= '0'; wait;
    end process;
end behavior;