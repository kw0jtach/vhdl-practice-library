library ieee;
use ieee.std_logic_1164.all;

entity demux_1to2_tb is
end demux_1to2_tb;

architecture behavior of demux_1to2_tb is
    signal D : std_logic := '0';
    signal S : std_logic := '0';
    signal Y1 : std_logic;
    signal Y2 : std_logic;

    component demux_1to2
        Port (
            D : in std_logic;
            S : in std_logic;
            Y1 : out std_logic;
            Y2 : out std_logic
        );
    end component;

begin
    uut : demux_1to2 port map( D => D, S => S, Y1 => Y1, Y2 => Y2 );

    stim_proc: process
    begin
        D <= '0'; S <= '0'; wait for 10 ns;
        D <= '1'; S <= '0'; wait for 10 ns;
        D <= '0'; S <= '1'; wait for 10 ns;
        D <= '1'; S <= '1'; wait for 10 ns;
        wait;
    end process;

end behavior;