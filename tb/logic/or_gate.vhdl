library ieee;
use ieee.std_logic_1164.all;

entity or_gate_tb is
end or_gate_tb;

architecture behavior of or_gate_tb is
    signal A : std_logic := '0';
    signal B : std_logic := '0';
    signal Y : std_logic;

    component or_gate
        Port (
            A : in std_logic;
            B : in std_logic;
            Y : out std_logic
        );
    end component;

begin
    uut : or_gate port map( A => A, B => B, Y => Y );

    stim_proc : process
    begin
        A <= '0'; B <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; wait for 10 ns;
        wait;
    end process;
end behavior;