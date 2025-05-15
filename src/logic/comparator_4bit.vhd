library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.ALL;

entity comparator_4bit is
    Port (
        A  : in  std_logic_vector(3 downto 0);
        B  : in  std_logic_vector(3 downto 0);
        EQ : out std_logic;
        GT : out std_logic;
        LT : out std_logic
    );
end comparator_4bit;

architecture Behavioral of comparator_4bit is
begin
    process(A, B)
    begin
        if A = B then
            EQ <= '1';
            GT <= '0';
            LT <= '0';
        elsif A > B then
            EQ <= '0';
            GT <= '1';
            LT <= '0';
        else
            EQ <= '0';
            GT <= '0';
            LT <= '1';
        end if;
    end process;
    
end Behavioral;
