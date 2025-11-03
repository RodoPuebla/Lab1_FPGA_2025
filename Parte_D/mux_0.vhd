-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
-- CREATED		"Mon Oct 27 08:53:32 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY altera;
USE altera.maxplus2.all; 

LIBRARY work;

ENTITY mux_0 IS 
PORT 
( 
	S_S0	:	IN	 STD_LOGIC;
	S_S1	:	IN	 STD_LOGIC;
	S_S2	:	IN	 STD_LOGIC;
	S_S3	:	IN	 STD_LOGIC;
	C_S0	:	IN	 STD_LOGIC;
	C_S1	:	IN	 STD_LOGIC;
	C_S2	:	IN	 STD_LOGIC;
	C_S3	:	IN	 STD_LOGIC;
	Sel	:	IN	 STD_LOGIC;
	S0	:	OUT	 STD_LOGIC;
	S1	:	OUT	 STD_LOGIC;
	S2	:	OUT	 STD_LOGIC;
	S3	:	OUT	 STD_LOGIC
); 
END mux_0;

ARCHITECTURE bdf_type OF mux_0 IS 
BEGIN 

-- instantiate macrofunction 

b2v_inst3 : mux
PORT MAP(S_S0 => S_S0,
		 S_S1 => S_S1,
		 S_S2 => S_S2,
		 S_S3 => S_S3,
		 C_S0 => C_S0,
		 C_S1 => C_S1,
		 C_S2 => C_S2,
		 C_S3 => C_S3,
		 Sel => Sel,
		 S0 => S0,
		 S1 => S1,
		 S2 => S2,
		 S3 => S3);

END bdf_type; 