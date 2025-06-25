library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity d_flipflop_tb is
end d_flipflop_tb;

architecture behavior of d_flipflop_tb is
    signal D      : std_logic := '0';
    signal Clk    : std_logic := '1'; 
    signal Q, Qn  : std_logic;

    constant Clk_period : time := 10 ns;

    component d_flipflop 
        Port (
            D   : in std_logic;
            Clk : in std_logic;
            Q   : out std_logic;
            Qn  : out std_logic
        );
    end component;

begin
    uut: d_flipflop port map(
        D   => D,
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
        D <= '0'; wait for 12 ns;
        D <= '1'; wait for 10 ns;
        D <= '0'; wait for 10 ns;
        D <= '1'; wait for 10 ns;
        wait;
    end process;
end behavior;