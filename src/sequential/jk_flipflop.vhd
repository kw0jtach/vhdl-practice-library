library ieee;
use ieee.std_logic_1164.all;

--- No changes(memo) : J = 0, K = 0
--- set  : J = 1, K = 0
--- reset : J = 0 , K = 1
--- toggle : J = 1, K = 1

entity jk_flipflop is
    Port (
        J   : in std_logic;
        K   : in std_logic;
        Clk : in std_logic;
        Q   : out std_logic;
        Qn  : out std_logic
    );
end jk_flipflop;

architecture Behavioral of jk_flipflop is
    signal q_int : std_logic := '0';
begin
    process(Clk)
    begin
        if rising_edge(Clk) then
            case(J & K) is
                when "00" => null;
                when "10" => q_int <= 1;
                when "01" => q_int <= 0;
                when "11" => q_int <= not q_int;
                when others => null;
            end case;
        end if;
    end process;
    
    Q  <= q_int;
    Qn <= not q_int;
end Behavioral;