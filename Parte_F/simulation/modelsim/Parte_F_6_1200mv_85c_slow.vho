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

-- DATE "11/03/2025 09:41:16"

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

ENTITY 	Diagrama_de_bloques IS
    PORT (
	Salida_ACK : OUT std_logic;
	SCL : IN std_logic;
	SDA : INOUT std_logic;
	Datos : OUT std_logic_vector(7 DOWNTO 0)
	);
END Diagrama_de_bloques;

-- Design Ports Information
-- Salida_ACK	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Datos[7]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Datos[6]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Datos[5]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Datos[4]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Datos[3]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Datos[2]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Datos[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Datos[0]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDA	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCL	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Diagrama_de_bloques IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Salida_ACK : std_logic;
SIGNAL ww_SCL : std_logic;
SIGNAL ww_Datos : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SCL~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst12~o\ : std_logic;
SIGNAL \Salida_ACK~output_o\ : std_logic;
SIGNAL \Datos[7]~output_o\ : std_logic;
SIGNAL \Datos[6]~output_o\ : std_logic;
SIGNAL \Datos[5]~output_o\ : std_logic;
SIGNAL \Datos[4]~output_o\ : std_logic;
SIGNAL \Datos[3]~output_o\ : std_logic;
SIGNAL \Datos[2]~output_o\ : std_logic;
SIGNAL \Datos[1]~output_o\ : std_logic;
SIGNAL \Datos[0]~output_o\ : std_logic;
SIGNAL \SCL~input_o\ : std_logic;
SIGNAL \SCL~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst12_ibuf~o\ : std_logic;
SIGNAL \inst|fstate.Guardar_dato~feeder_combout\ : std_logic;
SIGNAL \inst|fstate.Guardar_dato~q\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst5~combout\ : std_logic;
SIGNAL \inst5~clkctrl_outclk\ : std_logic;
SIGNAL \inst10|reg[6]~feeder_combout\ : std_logic;
SIGNAL \inst10|reg[5]~feeder_combout\ : std_logic;
SIGNAL \inst10|reg[4]~feeder_combout\ : std_logic;
SIGNAL \inst10|reg[3]~feeder_combout\ : std_logic;
SIGNAL \inst10|reg[2]~feeder_combout\ : std_logic;
SIGNAL \inst10|reg[1]~feeder_combout\ : std_logic;
SIGNAL \inst10|reg[0]~feeder_combout\ : std_logic;
SIGNAL \inst16|Equal0~1_combout\ : std_logic;
SIGNAL \inst16|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Selector2~1_combout\ : std_logic;
SIGNAL \inst|fstate.Oscioso~q\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|fstate.Guardar_dir~q\ : std_logic;
SIGNAL \inst|reg_fstate~0_combout\ : std_logic;
SIGNAL \inst|fstate.R_W~q\ : std_logic;
SIGNAL \inst|fstate.ACK1~feeder_combout\ : std_logic;
SIGNAL \inst|fstate.ACK1~q\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \inst7~clkctrl_outclk\ : std_logic;
SIGNAL \inst13|reg[6]~feeder_combout\ : std_logic;
SIGNAL \inst13|reg[5]~feeder_combout\ : std_logic;
SIGNAL \inst13|reg[4]~feeder_combout\ : std_logic;
SIGNAL \inst13|reg[3]~feeder_combout\ : std_logic;
SIGNAL \inst13|reg[2]~feeder_combout\ : std_logic;
SIGNAL \inst13|reg[1]~feeder_combout\ : std_logic;
SIGNAL \inst13|reg[0]~feeder_combout\ : std_logic;
SIGNAL \inst10|reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst13|reg\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Salida_ACK <= ww_Salida_ACK;
ww_SCL <= SCL;
Datos <= ww_Datos;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst5~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5~combout\);

\inst7~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7~combout\);

\SCL~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SCL~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y12_N2
inst12 : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => \inst|fstate.ACK1~q\,
	devoe => ww_devoe,
	o => \inst12~o\);

-- Location: IOOBUF_X0_Y12_N9
\Salida_ACK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fstate.ACK1~q\,
	devoe => ww_devoe,
	o => \Salida_ACK~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\Datos[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|reg\(7),
	devoe => ww_devoe,
	o => \Datos[7]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\Datos[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|reg\(6),
	devoe => ww_devoe,
	o => \Datos[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\Datos[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|reg\(5),
	devoe => ww_devoe,
	o => \Datos[5]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\Datos[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|reg\(4),
	devoe => ww_devoe,
	o => \Datos[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\Datos[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|reg\(3),
	devoe => ww_devoe,
	o => \Datos[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\Datos[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|reg\(2),
	devoe => ww_devoe,
	o => \Datos[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\Datos[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|reg\(1),
	devoe => ww_devoe,
	o => \Datos[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\Datos[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|reg\(0),
	devoe => ww_devoe,
	o => \Datos[0]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\SCL~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SCL,
	o => \SCL~input_o\);

-- Location: CLKCTRL_G2
\SCL~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SCL~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SCL~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y12_N1
inst12_ibuf : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SDA,
	o => \inst12_ibuf~o\);

-- Location: LCCOMB_X1_Y16_N18
\inst|fstate.Guardar_dato~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fstate.Guardar_dato~feeder_combout\ = \inst|fstate.ACK1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|fstate.ACK1~q\,
	combout => \inst|fstate.Guardar_dato~feeder_combout\);

-- Location: FF_X1_Y16_N19
\inst|fstate.Guardar_dato\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~input_o\,
	d => \inst|fstate.Guardar_dato~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.Guardar_dato~q\);

-- Location: LCCOMB_X2_Y16_N2
\inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (\inst|fstate.Guardar_dato~q\) # ((\inst12_ibuf~o\ & !\inst|fstate.Oscioso~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12_ibuf~o\,
	datab => \inst|fstate.Guardar_dato~q\,
	datad => \inst|fstate.Oscioso~q\,
	combout => \inst|Selector2~0_combout\);

-- Location: LCCOMB_X1_Y16_N26
inst5 : cycloneive_lcell_comb
-- Equation(s):
-- \inst5~combout\ = LCELL((\SCL~input_o\ & \inst|fstate.Guardar_dir~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCL~input_o\,
	datad => \inst|fstate.Guardar_dir~q\,
	combout => \inst5~combout\);

-- Location: CLKCTRL_G0
\inst5~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y16_N26
\inst10|reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|reg[6]~feeder_combout\ = \inst12_ibuf~o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12_ibuf~o\,
	combout => \inst10|reg[6]~feeder_combout\);

-- Location: FF_X2_Y16_N27
\inst10|reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst10|reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|reg\(6));

-- Location: LCCOMB_X2_Y16_N22
\inst10|reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|reg[5]~feeder_combout\ = \inst10|reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|reg\(6),
	combout => \inst10|reg[5]~feeder_combout\);

-- Location: FF_X2_Y16_N23
\inst10|reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst10|reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|reg\(5));

-- Location: LCCOMB_X2_Y16_N20
\inst10|reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|reg[4]~feeder_combout\ = \inst10|reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|reg\(5),
	combout => \inst10|reg[4]~feeder_combout\);

-- Location: FF_X2_Y16_N21
\inst10|reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst10|reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|reg\(4));

-- Location: LCCOMB_X2_Y16_N24
\inst10|reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|reg[3]~feeder_combout\ = \inst10|reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|reg\(4),
	combout => \inst10|reg[3]~feeder_combout\);

-- Location: FF_X2_Y16_N25
\inst10|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst10|reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|reg\(3));

-- Location: LCCOMB_X2_Y16_N16
\inst10|reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|reg[2]~feeder_combout\ = \inst10|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|reg\(3),
	combout => \inst10|reg[2]~feeder_combout\);

-- Location: FF_X2_Y16_N17
\inst10|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst10|reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|reg\(2));

-- Location: LCCOMB_X2_Y16_N12
\inst10|reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|reg[1]~feeder_combout\ = \inst10|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|reg\(2),
	combout => \inst10|reg[1]~feeder_combout\);

-- Location: FF_X2_Y16_N13
\inst10|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst10|reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|reg\(1));

-- Location: LCCOMB_X2_Y16_N30
\inst10|reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|reg[0]~feeder_combout\ = \inst10|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|reg\(1),
	combout => \inst10|reg[0]~feeder_combout\);

-- Location: FF_X2_Y16_N31
\inst10|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst10|reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|reg\(0));

-- Location: LCCOMB_X2_Y16_N14
\inst16|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Equal0~1_combout\ = (!\inst10|reg\(1) & (\inst10|reg\(0) & \inst10|reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|reg\(1),
	datac => \inst10|reg\(0),
	datad => \inst10|reg\(2),
	combout => \inst16|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y16_N6
\inst16|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Equal0~0_combout\ = (!\inst10|reg\(5) & (!\inst10|reg\(3) & (\inst10|reg\(6) & \inst10|reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|reg\(5),
	datab => \inst10|reg\(3),
	datac => \inst10|reg\(6),
	datad => \inst10|reg\(4),
	combout => \inst16|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y16_N28
\inst|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~1_combout\ = (!\inst|Selector2~0_combout\ & (((\inst16|Equal0~1_combout\ & \inst16|Equal0~0_combout\)) # (!\inst|fstate.Guardar_dir~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.Guardar_dir~q\,
	datab => \inst|Selector2~0_combout\,
	datac => \inst16|Equal0~1_combout\,
	datad => \inst16|Equal0~0_combout\,
	combout => \inst|Selector2~1_combout\);

-- Location: FF_X2_Y16_N29
\inst|fstate.Oscioso\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.Oscioso~q\);

-- Location: LCCOMB_X1_Y16_N12
\inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (!\inst12_ibuf~o\ & !\inst|fstate.Oscioso~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12_ibuf~o\,
	datad => \inst|fstate.Oscioso~q\,
	combout => \inst|Selector0~0_combout\);

-- Location: FF_X1_Y16_N13
\inst|fstate.Guardar_dir\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~input_o\,
	d => \inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.Guardar_dir~q\);

-- Location: LCCOMB_X2_Y16_N8
\inst|reg_fstate~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate~0_combout\ = (\inst|fstate.Guardar_dir~q\ & (\inst16|Equal0~1_combout\ & \inst16|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|fstate.Guardar_dir~q\,
	datac => \inst16|Equal0~1_combout\,
	datad => \inst16|Equal0~0_combout\,
	combout => \inst|reg_fstate~0_combout\);

-- Location: FF_X2_Y16_N9
\inst|fstate.R_W\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst|reg_fstate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.R_W~q\);

-- Location: LCCOMB_X1_Y16_N2
\inst|fstate.ACK1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fstate.ACK1~feeder_combout\ = \inst|fstate.R_W~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|fstate.R_W~q\,
	combout => \inst|fstate.ACK1~feeder_combout\);

-- Location: FF_X1_Y16_N3
\inst|fstate.ACK1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst|fstate.ACK1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.ACK1~q\);

-- Location: LCCOMB_X1_Y16_N8
inst7 : cycloneive_lcell_comb
-- Equation(s):
-- \inst7~combout\ = LCELL((\SCL~input_o\ & \inst|fstate.Guardar_dato~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCL~input_o\,
	datad => \inst|fstate.Guardar_dato~q\,
	combout => \inst7~combout\);

-- Location: CLKCTRL_G4
\inst7~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7~clkctrl_outclk\);

-- Location: FF_X1_Y4_N17
\inst13|reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	asdata => \inst12_ibuf~o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|reg\(7));

-- Location: LCCOMB_X1_Y4_N18
\inst13|reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|reg[6]~feeder_combout\ = \inst13|reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|reg\(7),
	combout => \inst13|reg[6]~feeder_combout\);

-- Location: FF_X1_Y4_N19
\inst13|reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst13|reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|reg\(6));

-- Location: LCCOMB_X1_Y4_N0
\inst13|reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|reg[5]~feeder_combout\ = \inst13|reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|reg\(6),
	combout => \inst13|reg[5]~feeder_combout\);

-- Location: FF_X1_Y4_N1
\inst13|reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst13|reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|reg\(5));

-- Location: LCCOMB_X1_Y4_N6
\inst13|reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|reg[4]~feeder_combout\ = \inst13|reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|reg\(5),
	combout => \inst13|reg[4]~feeder_combout\);

-- Location: FF_X1_Y4_N7
\inst13|reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst13|reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|reg\(4));

-- Location: LCCOMB_X1_Y4_N20
\inst13|reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|reg[3]~feeder_combout\ = \inst13|reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|reg\(4),
	combout => \inst13|reg[3]~feeder_combout\);

-- Location: FF_X1_Y4_N21
\inst13|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst13|reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|reg\(3));

-- Location: LCCOMB_X1_Y4_N10
\inst13|reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|reg[2]~feeder_combout\ = \inst13|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|reg\(3),
	combout => \inst13|reg[2]~feeder_combout\);

-- Location: FF_X1_Y4_N11
\inst13|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst13|reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|reg\(2));

-- Location: LCCOMB_X1_Y4_N12
\inst13|reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|reg[1]~feeder_combout\ = \inst13|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|reg\(2),
	combout => \inst13|reg[1]~feeder_combout\);

-- Location: FF_X1_Y4_N13
\inst13|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst13|reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|reg\(1));

-- Location: LCCOMB_X1_Y4_N14
\inst13|reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|reg[0]~feeder_combout\ = \inst13|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|reg\(1),
	combout => \inst13|reg[0]~feeder_combout\);

-- Location: FF_X1_Y4_N15
\inst13|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst13|reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|reg\(0));

ww_Salida_ACK <= \Salida_ACK~output_o\;

ww_Datos(7) <= \Datos[7]~output_o\;

ww_Datos(6) <= \Datos[6]~output_o\;

ww_Datos(5) <= \Datos[5]~output_o\;

ww_Datos(4) <= \Datos[4]~output_o\;

ww_Datos(3) <= \Datos[3]~output_o\;

ww_Datos(2) <= \Datos[2]~output_o\;

ww_Datos(1) <= \Datos[1]~output_o\;

ww_Datos(0) <= \Datos[0]~output_o\;

SDA <= \inst12~o\;
END structure;


