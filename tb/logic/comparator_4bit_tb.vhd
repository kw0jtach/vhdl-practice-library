library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity tb_comparator_4bit is
end tb_comparator_4bit;

architecture behavior of tb_comparator_4bit is
    signal A, B : std_logic_vector(3 downto 0) := "0000";
    signal EQ, GT, LT : std_logic;

    component comparator_4bit
        Port (
            A  : in  std_logic_vector(3 downto 0);
            B  : in  std_logic_vector(3 downto 0);
            EQ : out std_logic;
            GT : out std_logic;
            LT : out std_logic
        );
    end component;

begin
    UUT: comparator_4bit
        port map (A => A, B => B, EQ => EQ, GT => GT, LT => LT);

    stim_proc: process
    begin
        A <= "0101"; B <= "0101"; wait for 10 ns; -- EQ = 1
        A <= "1010"; B <= "0101"; wait for 10 ns; -- GT = 1
        A <= "0011"; B <= "1000"; wait for 10 ns; -- LT = 1

        wait;
    end process;
end behavior;
