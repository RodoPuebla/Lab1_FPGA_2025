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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/02/2025 21:10:25"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Parte_D IS
    PORT (
	S0 : OUT std_logic;
	CLK : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	Selec : IN std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	Bnadera_Z : OUT std_logic
	);
END Parte_D;

-- Design Ports Information
-- S0	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bnadera_Z	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Selec	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Parte_D IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_Selec : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_Bnadera_Z : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S0~output_o\ : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \S3~output_o\ : std_logic;
SIGNAL \Bnadera_Z~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \inst2|SYNTHESIZED_WIRE_33~q\ : std_logic;
SIGNAL \inst2|SYNTHESIZED_WIRE_35~q\ : std_logic;
SIGNAL \inst2|SYNTHESIZED_WIRE_43~combout\ : std_logic;
SIGNAL \inst2|S0~q\ : std_logic;
SIGNAL \Selec~input_o\ : std_logic;
SIGNAL \inst8~feeder_combout\ : std_logic;
SIGNAL \inst8~q\ : std_logic;
SIGNAL \inst3|S0~0_combout\ : std_logic;
SIGNAL \inst4~q\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \inst|b2v_inst2|x~combout\ : std_logic;
SIGNAL \inst2|SYNTHESIZED_WIRE_34~q\ : std_logic;
SIGNAL \inst2|SYNTHESIZED_WIRE_38~feeder_combout\ : std_logic;
SIGNAL \inst2|SYNTHESIZED_WIRE_38~q\ : std_logic;
SIGNAL \inst2|b2v_inst5|x~combout\ : std_logic;
SIGNAL \inst2|S1~q\ : std_logic;
SIGNAL \inst3|S1~0_combout\ : std_logic;
SIGNAL \inst5~q\ : std_logic;
SIGNAL \inst3|S2~0_combout\ : std_logic;
SIGNAL \inst2|b2v_inst9|S~0_combout\ : std_logic;
SIGNAL \inst2|S2~q\ : std_logic;
SIGNAL \inst3|S2~1_combout\ : std_logic;
SIGNAL \inst6~q\ : std_logic;
SIGNAL \inst3|S3~0_combout\ : std_logic;
SIGNAL \inst2|b2v_inst15|S~0_combout\ : std_logic;
SIGNAL \inst2|C1~q\ : std_logic;
SIGNAL \inst3|S3~1_combout\ : std_logic;
SIGNAL \inst7~q\ : std_logic;
SIGNAL \inst2|Bandera_Z~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Bandera_Z~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

S0 <= ww_S0;
ww_CLK <= CLK;
ww_A0 <= A0;
ww_B0 <= B0;
ww_A1 <= A1;
ww_B1 <= B1;
ww_Selec <= Selec;
S1 <= ww_S1;
S2 <= ww_S2;
S3 <= ww_S3;
Bnadera_Z <= ww_Bnadera_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst2|ALT_INV_Bandera_Z~0_combout\ <= NOT \inst2|Bandera_Z~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y24_N16
\S0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~q\,
	devoe => ww_devoe,
	o => \S0~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\S1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~q\,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\S2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6~q\,
	devoe => ww_devoe,
	o => \S2~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\S3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7~q\,
	devoe => ww_devoe,
	o => \S3~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\Bnadera_Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Bandera_Z~0_combout\,
	devoe => ww_devoe,
	o => \Bnadera_Z~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X53_Y17_N1
\B0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: IOIBUF_X53_Y17_N8
\A0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: FF_X1_Y23_N27
\inst2|SYNTHESIZED_WIRE_33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \B0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNTHESIZED_WIRE_33~q\);

-- Location: FF_X1_Y23_N13
\inst2|SYNTHESIZED_WIRE_35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \A0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNTHESIZED_WIRE_35~q\);

-- Location: LCCOMB_X1_Y23_N8
\inst2|SYNTHESIZED_WIRE_43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|SYNTHESIZED_WIRE_43~combout\ = (\inst2|SYNTHESIZED_WIRE_33~q\ & \inst2|SYNTHESIZED_WIRE_35~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|SYNTHESIZED_WIRE_33~q\,
	datad => \inst2|SYNTHESIZED_WIRE_35~q\,
	combout => \inst2|SYNTHESIZED_WIRE_43~combout\);

-- Location: FF_X1_Y23_N9
\inst2|S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|SYNTHESIZED_WIRE_43~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|S0~q\);

-- Location: IOIBUF_X0_Y23_N1
\Selec~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Selec,
	o => \Selec~input_o\);

-- Location: LCCOMB_X1_Y23_N18
\inst8~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8~feeder_combout\ = \Selec~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selec~input_o\,
	combout => \inst8~feeder_combout\);

-- Location: FF_X1_Y23_N19
inst8 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8~q\);

-- Location: LCCOMB_X1_Y23_N0
\inst3|S0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|S0~0_combout\ = (\inst8~q\ & (\B0~input_o\ & (\A0~input_o\))) # (!\inst8~q\ & (((\inst2|S0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B0~input_o\,
	datab => \A0~input_o\,
	datac => \inst2|S0~q\,
	datad => \inst8~q\,
	combout => \inst3|S0~0_combout\);

-- Location: FF_X1_Y23_N1
inst4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4~q\);

-- Location: IOIBUF_X0_Y23_N15
\A1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\B1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: LCCOMB_X1_Y23_N28
\inst|b2v_inst2|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst2|x~combout\ = (\A1~input_o\ & (\B0~input_o\ $ (((\A0~input_o\ & \B1~input_o\))))) # (!\A1~input_o\ & (((\A0~input_o\ & \B1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~input_o\,
	datab => \B0~input_o\,
	datac => \A0~input_o\,
	datad => \B1~input_o\,
	combout => \inst|b2v_inst2|x~combout\);

-- Location: FF_X1_Y23_N7
\inst2|SYNTHESIZED_WIRE_34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \A1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNTHESIZED_WIRE_34~q\);

-- Location: LCCOMB_X1_Y23_N16
\inst2|SYNTHESIZED_WIRE_38~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|SYNTHESIZED_WIRE_38~feeder_combout\ = \B1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B1~input_o\,
	combout => \inst2|SYNTHESIZED_WIRE_38~feeder_combout\);

-- Location: FF_X1_Y23_N17
\inst2|SYNTHESIZED_WIRE_38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|SYNTHESIZED_WIRE_38~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SYNTHESIZED_WIRE_38~q\);

-- Location: LCCOMB_X1_Y23_N14
\inst2|b2v_inst5|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|b2v_inst5|x~combout\ = (\inst2|SYNTHESIZED_WIRE_34~q\ & (\inst2|SYNTHESIZED_WIRE_33~q\ $ (((\inst2|SYNTHESIZED_WIRE_38~q\ & \inst2|SYNTHESIZED_WIRE_35~q\))))) # (!\inst2|SYNTHESIZED_WIRE_34~q\ & (\inst2|SYNTHESIZED_WIRE_38~q\ & 
-- ((\inst2|SYNTHESIZED_WIRE_35~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNTHESIZED_WIRE_34~q\,
	datab => \inst2|SYNTHESIZED_WIRE_38~q\,
	datac => \inst2|SYNTHESIZED_WIRE_33~q\,
	datad => \inst2|SYNTHESIZED_WIRE_35~q\,
	combout => \inst2|b2v_inst5|x~combout\);

-- Location: FF_X1_Y23_N15
\inst2|S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|b2v_inst5|x~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|S1~q\);

-- Location: LCCOMB_X1_Y23_N2
\inst3|S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|S1~0_combout\ = (\inst8~q\ & (\inst|b2v_inst2|x~combout\)) # (!\inst8~q\ & ((\inst2|S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst2|x~combout\,
	datac => \inst2|S1~q\,
	datad => \inst8~q\,
	combout => \inst3|S1~0_combout\);

-- Location: FF_X1_Y23_N3
inst5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5~q\);

-- Location: LCCOMB_X1_Y23_N20
\inst3|S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|S2~0_combout\ = (\A1~input_o\ & (\B1~input_o\ & ((!\A0~input_o\) # (!\B0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~input_o\,
	datab => \B0~input_o\,
	datac => \A0~input_o\,
	datad => \B1~input_o\,
	combout => \inst3|S2~0_combout\);

-- Location: LCCOMB_X1_Y23_N22
\inst2|b2v_inst9|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|b2v_inst9|S~0_combout\ = (\inst2|SYNTHESIZED_WIRE_38~q\ & ((\inst2|SYNTHESIZED_WIRE_35~q\ & ((!\inst2|SYNTHESIZED_WIRE_34~q\))) # (!\inst2|SYNTHESIZED_WIRE_35~q\ & (!\inst2|SYNTHESIZED_WIRE_33~q\ & \inst2|SYNTHESIZED_WIRE_34~q\)))) # 
-- (!\inst2|SYNTHESIZED_WIRE_38~q\ & (((\inst2|SYNTHESIZED_WIRE_33~q\ & \inst2|SYNTHESIZED_WIRE_34~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNTHESIZED_WIRE_35~q\,
	datab => \inst2|SYNTHESIZED_WIRE_38~q\,
	datac => \inst2|SYNTHESIZED_WIRE_33~q\,
	datad => \inst2|SYNTHESIZED_WIRE_34~q\,
	combout => \inst2|b2v_inst9|S~0_combout\);

-- Location: FF_X1_Y23_N23
\inst2|S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|b2v_inst9|S~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|S2~q\);

-- Location: LCCOMB_X1_Y23_N24
\inst3|S2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|S2~1_combout\ = (\inst8~q\ & (\inst3|S2~0_combout\)) # (!\inst8~q\ & ((\inst2|S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|S2~0_combout\,
	datac => \inst2|S2~q\,
	datad => \inst8~q\,
	combout => \inst3|S2~1_combout\);

-- Location: FF_X1_Y23_N25
inst6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|S2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6~q\);

-- Location: LCCOMB_X1_Y23_N30
\inst3|S3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|S3~0_combout\ = (\B1~input_o\ & (\B0~input_o\ & \A1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1~input_o\,
	datab => \B0~input_o\,
	datac => \A1~input_o\,
	combout => \inst3|S3~0_combout\);

-- Location: LCCOMB_X1_Y23_N4
\inst2|b2v_inst15|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|b2v_inst15|S~0_combout\ = (\inst2|SYNTHESIZED_WIRE_34~q\ & (!\inst2|SYNTHESIZED_WIRE_38~q\ & (\inst2|SYNTHESIZED_WIRE_33~q\))) # (!\inst2|SYNTHESIZED_WIRE_34~q\ & (\inst2|SYNTHESIZED_WIRE_38~q\ & ((\inst2|SYNTHESIZED_WIRE_35~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNTHESIZED_WIRE_34~q\,
	datab => \inst2|SYNTHESIZED_WIRE_38~q\,
	datac => \inst2|SYNTHESIZED_WIRE_33~q\,
	datad => \inst2|SYNTHESIZED_WIRE_35~q\,
	combout => \inst2|b2v_inst15|S~0_combout\);

-- Location: FF_X1_Y23_N5
\inst2|C1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|b2v_inst15|S~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|C1~q\);

-- Location: LCCOMB_X1_Y23_N10
\inst3|S3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|S3~1_combout\ = (\inst8~q\ & (\inst3|S3~0_combout\ & (\A0~input_o\))) # (!\inst8~q\ & (((\inst2|C1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|S3~0_combout\,
	datab => \A0~input_o\,
	datac => \inst2|C1~q\,
	datad => \inst8~q\,
	combout => \inst3|S3~1_combout\);

-- Location: FF_X1_Y23_N11
inst7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|S3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7~q\);

-- Location: LCCOMB_X1_Y23_N26
\inst2|Bandera_Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Bandera_Z~0_combout\ = (\inst2|SYNTHESIZED_WIRE_38~q\ & ((\inst2|SYNTHESIZED_WIRE_35~q\) # ((\inst2|SYNTHESIZED_WIRE_34~q\)))) # (!\inst2|SYNTHESIZED_WIRE_38~q\ & (\inst2|SYNTHESIZED_WIRE_33~q\ & ((\inst2|SYNTHESIZED_WIRE_35~q\) # 
-- (\inst2|SYNTHESIZED_WIRE_34~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SYNTHESIZED_WIRE_38~q\,
	datab => \inst2|SYNTHESIZED_WIRE_35~q\,
	datac => \inst2|SYNTHESIZED_WIRE_33~q\,
	datad => \inst2|SYNTHESIZED_WIRE_34~q\,
	combout => \inst2|Bandera_Z~0_combout\);

ww_S0 <= \S0~output_o\;

ww_S1 <= \S1~output_o\;

ww_S2 <= \S2~output_o\;

ww_S3 <= \S3~output_o\;

ww_Bnadera_Z <= \Bnadera_Z~output_o\;
END structure;


