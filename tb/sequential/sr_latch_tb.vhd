library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sr_latch_tb is
end sr_latch_tb;

architecture behavior of sr_latch_tb is
    signal S, R : std_logic := '0';
    signal Q, Qn : std_logic;

    component sr_latch
        Port (
            S  : in  std_logic;
            R  : in  std_logic;
            Q  : out std_logic;
            Qn : out std_logic
        );
    end component;

begin
    uut: sr_latch
        port map (S => S, R => R, Q => Q, Qn => Qn);

    stim_proc: process
    begin
        S <= '1'; R <= '0'; wait for 10 ns;

        S <= '0'; R <= '0'; wait for 10 ns;

        S <= '0'; R <= '1'; wait for 10 ns;

        S <= '1'; R <= '1'; wait for 10 ns;

        wait;
    end process;
end behavior;