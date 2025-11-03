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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/02/2025 21:28:42"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Maquina_De_Estados
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Maquina_De_Estados_vhd_vec_tst IS
END Maquina_De_Estados_vhd_vec_tst;
ARCHITECTURE Maquina_De_Estados_arch OF Maquina_De_Estados_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
SIGNAL S2 : STD_LOGIC;
SIGNAL S3 : STD_LOGIC;
SIGNAL S4 : STD_LOGIC;
SIGNAL X : STD_LOGIC;
COMPONENT Maquina_De_Estados
	PORT (
	clock : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	S1 : OUT STD_LOGIC;
	S2 : OUT STD_LOGIC;
	S3 : OUT STD_LOGIC;
	S4 : OUT STD_LOGIC;
	X : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Maquina_De_Estados
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	reset => reset,
	S1 => S1,
	S2 => S2,
	S3 => S3,
	S4 => S4,
	X => X
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 25000 ps;
	clock <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- X
t_prcs_X: PROCESS
BEGIN
	X <= '1';
	WAIT FOR 290000 ps;
	X <= '0';
	WAIT FOR 700000 ps;
	X <= '1';
WAIT;
END PROCESS t_prcs_X;
END Maquina_De_Estados_arch;
