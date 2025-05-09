library ieee;
use ieee.std_logic_1164.all;

entity not_gate_tb is
end not_gate_tb;

architecture behavior of not_gate_tb is
    signal A : std_logic := '0';
    signal Y : std_logic;

    component not_gate
        Port (
            A : in std_logic;
            Y : out std_logic
        );
    end component;

begin
    uut : not_gate port map( A => A, Y => Y );

    stim_proc: process
    begin
        A <= '0'; wait for 10 ns;
        A <= '1'; wait for 10 ns;
        wait;
    end process;
end behavior;