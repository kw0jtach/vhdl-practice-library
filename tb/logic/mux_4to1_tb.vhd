library ieee;
use ieee.std_logic_1164.all;

entity mux_4to1_tb is
end mux_4to1_tb;

architecture behavior of mux_4to1_tb is
    signal D0 : std_logic := '0';
    signal D1 : std_logic := '0';
    signal D2 : std_logic := '0';
    signal D3 : std_logic := '0';
    signal S : std_logic_vector(1 downto 0) := "00";
    signal Y : std_logic;

    component mux_4to1
        Port (
            D0 : in std_logic;
            D1 : in std_logic;
            D2 : in std_logic;
            D3 : in std_logic;
            S : in std_logic_vector(1 downto 0);
            Y : out std_logic
        );
    end component;

begin
    uut: mux_4to1 port map(
        D0 => D0,
        D1 => D1,
        D2 => D2,
        D3 => D3,
        S => S,
        Y => Y
    );

    stim_proc: process
    begin
        D0 <= '0'; D1 <= '1'; D2 <= '0'; D3 <= '1'; S <= "00"; wait for 10 ns;
        D0 <= '0'; D1 <= '1'; D2 <= '0'; D3 <= '1'; S <= "01"; wait for 10 ns;
        D0 <= '0'; D1 <= '1'; D2 <= '0'; D3 <= '1'; S <= "10"; wait for 10 ns;
        D0 <= '0'; D1 <= '1'; D2 <= '0'; D3 <= '1'; S <= "11"; wait for 10 ns;
        wait;
    end process;
    
end behavior;