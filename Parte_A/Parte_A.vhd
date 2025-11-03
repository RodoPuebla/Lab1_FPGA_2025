library ieee;
use ieee.std_logic_1164.all;

entity Parte_A is
	port(
		A: 		in	 std_logic;
		B: 		in	 std_logic;
		C_in: 	in	 std_logic;
		
		S:			out std_logic;
		C_out:	out std_logic);
end Parte_A;

architecture Full_Adder of Parte_A is
	
	signal x: std_logic;
	
begin

	x  <= A xor B;
	S  <= x xor C_in;
	
	C_out <= (A and B) or (A and C_in) or (B and C_in);
	
	end Full_Adder;