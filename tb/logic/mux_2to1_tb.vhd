library ieee;
use ieee.std_logic_1164.all;

entity mux_2to1_tb is
end mux_2to1_tb;

architecture behavior of mux_2to1_tb is

    component mux_2to1
        Port (
            A : in std_logic;
            B : in std_logic;
            S : in std_logic;
            Y : out std_logic
        );
    end component;

    signal A : std_logic := '0';
    signal B : std_logic := '0';
    signal S : std_logic := '0';
    signal Y : std_logic;

begin
    uut : mux_2to1 port map( A => A, B => B, S => S, Y => Y );

    stim_proc: process
    begin
        A <= '0'; B <= '1'; S <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; S <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; S <= '0'; wait for 10 ns;
        A <= '1'; B <= '0'; S <= '1'; wait for 10 ns;
        wait;
    end process;

end behavior;