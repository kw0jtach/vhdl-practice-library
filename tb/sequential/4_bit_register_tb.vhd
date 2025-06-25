library ieee;
use ieee.std_logic_1164.all;

entity 4_bit_register_tb is
end 4_bit_register_tb;

architecture behavior of 4_bit_register_tb is
    signal D      : std_logic_vector(3 downto 0) := (others => '0');
    signal RST    : std_logic := '0';
    signal Clk    : std_logic := '1';
    signal Q      : std_logic_vector(3 downto 0);

    constant Clk_period : time := 10 ns;

    component 4_bit_register
        Port(
            D   : in std_logic_vector(3 downto 0);
            Clk : in std_logic;
            RST : in std_logic;
            Q   : out std_logic_vector(3 downto 0)
        );
    end component;

begin
    uut: 4_bit_register port map(
        D => D,
        Clk => Clk,
        RST => RST,
        Q => Q
    );

    clk_proc: process
    begin
        Clk <= not Clk;
        wait for Clk_period / 2;
    end process;

    stim_proc: process
    begin
        D <= "1010"; wait for 10 ns;

        D <= "1100"; wait for 10 ns;

        RST <= '1'; wait for 7 ns;
        RST <= '0'; wait for 3 ns;

        D <= "0011"; wait for 10 ns;

        wait;
    end process;
end behavior;