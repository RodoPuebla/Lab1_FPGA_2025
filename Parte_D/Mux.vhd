library ieee;
use ieee.std_logic_1164.all;

entity Mux is
	port(
		S_S0: 	in	 std_logic;
		S_S1: 	in	 std_logic;
		S_S2: 	in	 std_logic;
		S_S3: 	in	 std_logic;
		
		C_S0: 	in	 std_logic;
		C_S1: 	in	 std_logic;
		C_S2: 	in	 std_logic;
		C_S3: 	in	 std_logic;
		
		Sel: 		in	 std_logic;
		
		S0: 		out std_logic;
		S1: 		out std_logic;
		S2: 		out std_logic;
		S3: 		out std_logic);
		
end Mux;

architecture arquitectura of Mux is
begin

    Control_Mux: process(S_S0, S_S1, S_S2, S_S3, C_S0, C_S1, C_S2, C_S3, Sel)
    begin
	 
        if Sel = '1' then
            S0 <= S_S0;
            S1 <= S_S1;
            S2 <= S_S2;
            S3 <= S_S3;
        else
            S0 <= C_S0;
            S1 <= C_S1;
            S2 <= C_S2;
            S3 <= C_S3;
        end if;
    end process Control_Mux;

end arquitectura;