library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity contador_mod8 is
    Port (
        clk   : in  STD_LOGIC;
        reset : in  STD_LOGIC;
        cuenta : out STD_LOGIC_VECTOR(2 downto 0);
        Cout  : out  STD_LOGIC
    );
end contador_mod8;

architecture Behavioral of contador_mod8 is
    signal contador : unsigned(2 downto 0) := (others => '0');
begin
    process(clk, reset)
    begin
        if reset = '1' then
            contador <= (others => '0');
        elsif rising_edge(clk) then
            if contador = 7 then
                contador <= (others => '0');  -- vuelve a 0
					 Cout     <= '1';
            else
                contador <= contador + 1;      -- incrementa
            end if;
        end if;
    end process;

    cuenta <= std_logic_vector(contador);
end Behavioral;
