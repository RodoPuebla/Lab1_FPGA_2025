library ieee;
use ieee.std_logic_1164.all;

entity FFJK is
	
	port( J:   in std_logic;
			K:   in std_logic;
			clk: in std_logic;
			
			Q:   out std_logic);
end FFJK;

architecture arquitectura of FFJK is

	signal est: std_logic := '0';
	
begin
	process(clk)
    begin
        if rising_edge(clk) then --cambia cuando tengo un flanco positivo
            if (J = '0' and K = '0') then
                est <= est;
            elsif (J = '0' and K = '1') then
                est <= '0';
            elsif (J = '1' and K = '0') then
                est <= '1';
            elsif (J = '1' and K = '1') then
                est <= not est;
            end if;
        end if;
    end process;

    Q <= est;
	 
end arquitectura;
		