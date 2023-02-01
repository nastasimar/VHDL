-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/19/2022 17:24:58"

-- 
-- Device: Altera EP4CE115F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	uart IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	data : OUT std_logic_vector(7 DOWNTO 0);
	st_en : IN std_logic;
	vector : IN std_logic_vector(7 DOWNTO 0)
	);
END uart;

-- Design Ports Information
-- data[0]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vector[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vector[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vector[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vector[3]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vector[4]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vector[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vector[6]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vector[7]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- st_en	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uart IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_st_en : std_logic;
SIGNAL ww_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rec|Add0~0_combout\ : std_logic;
SIGNAL \rec|Add0~2_combout\ : std_logic;
SIGNAL \rec|Add0~4_combout\ : std_logic;
SIGNAL \rec|Add0~10_combout\ : std_logic;
SIGNAL \rec|state.stop_bit~q\ : std_logic;
SIGNAL \rec|LessThan1~5_combout\ : std_logic;
SIGNAL \rec|state.recieve~q\ : std_logic;
SIGNAL \rec|state.stop_bit~1_combout\ : std_logic;
SIGNAL \rec|Selector16~0_combout\ : std_logic;
SIGNAL \rec|Selector16~1_combout\ : std_logic;
SIGNAL \rec|Selector16~2_combout\ : std_logic;
SIGNAL \rec|LessThan1~7_combout\ : std_logic;
SIGNAL \vector[0]~input_o\ : std_logic;
SIGNAL \vector[1]~input_o\ : std_logic;
SIGNAL \vector[2]~input_o\ : std_logic;
SIGNAL \vector[3]~input_o\ : std_logic;
SIGNAL \vector[4]~input_o\ : std_logic;
SIGNAL \vector[5]~input_o\ : std_logic;
SIGNAL \vector[6]~input_o\ : std_logic;
SIGNAL \vector[7]~input_o\ : std_logic;
SIGNAL \st_en~input_o\ : std_logic;
SIGNAL \data[0]~output_o\ : std_logic;
SIGNAL \data[1]~output_o\ : std_logic;
SIGNAL \data[2]~output_o\ : std_logic;
SIGNAL \data[3]~output_o\ : std_logic;
SIGNAL \data[4]~output_o\ : std_logic;
SIGNAL \data[5]~output_o\ : std_logic;
SIGNAL \data[6]~output_o\ : std_logic;
SIGNAL \data[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rec|Selector15~0_combout\ : std_logic;
SIGNAL \rec|state.start_bit~q\ : std_logic;
SIGNAL \rec|cnt[8]~0_combout\ : std_logic;
SIGNAL \rec|Add0~34_combout\ : std_logic;
SIGNAL \rec|Add0~29_combout\ : std_logic;
SIGNAL \rec|Add0~7\ : std_logic;
SIGNAL \rec|Add0~8_combout\ : std_logic;
SIGNAL \rec|Add0~30_combout\ : std_logic;
SIGNAL \rec|Add0~9\ : std_logic;
SIGNAL \rec|Add0~11\ : std_logic;
SIGNAL \rec|Add0~13\ : std_logic;
SIGNAL \rec|Add0~14_combout\ : std_logic;
SIGNAL \rec|Add0~26_combout\ : std_logic;
SIGNAL \rec|Add0~15\ : std_logic;
SIGNAL \rec|Add0~17\ : std_logic;
SIGNAL \rec|Add0~19\ : std_logic;
SIGNAL \rec|Add0~21\ : std_logic;
SIGNAL \rec|Add0~23\ : std_logic;
SIGNAL \rec|Add0~24_combout\ : std_logic;
SIGNAL \rec|cnt[12]~1_combout\ : std_logic;
SIGNAL \rec|Add0~12_combout\ : std_logic;
SIGNAL \rec|Add0~31_combout\ : std_logic;
SIGNAL \rec|LessThan1~4_combout\ : std_logic;
SIGNAL \rec|Add0~16_combout\ : std_logic;
SIGNAL \rec|Add0~27_combout\ : std_logic;
SIGNAL \rec|Add0~22_combout\ : std_logic;
SIGNAL \rec|cnt[11]~4_combout\ : std_logic;
SIGNAL \rec|LessThan1~3_combout\ : std_logic;
SIGNAL \rec|LessThan1~6_combout\ : std_logic;
SIGNAL \rec|RX_DATA[0]~0_combout\ : std_logic;
SIGNAL \rec|Add0~33_combout\ : std_logic;
SIGNAL \rec|Add0~1\ : std_logic;
SIGNAL \rec|Add0~3\ : std_logic;
SIGNAL \rec|Add0~5\ : std_logic;
SIGNAL \rec|Add0~6_combout\ : std_logic;
SIGNAL \rec|Add0~35_combout\ : std_logic;
SIGNAL \rec|Equal0~1_combout\ : std_logic;
SIGNAL \rec|Add0~32_combout\ : std_logic;
SIGNAL \rec|Equal0~0_combout\ : std_logic;
SIGNAL \rec|Add0~18_combout\ : std_logic;
SIGNAL \rec|Add0~28_combout\ : std_logic;
SIGNAL \rec|Equal0~2_combout\ : std_logic;
SIGNAL \rec|Equal0~3_combout\ : std_logic;
SIGNAL \rec|Selector14~0_combout\ : std_logic;
SIGNAL \rec|state.IDLE~q\ : std_logic;
SIGNAL \rec|cnt[8]~2_combout\ : std_logic;
SIGNAL \rec|Add0~20_combout\ : std_logic;
SIGNAL \rec|cnt[10]~3_combout\ : std_logic;
SIGNAL \rec|LessThan1~2_combout\ : std_logic;
SIGNAL \rec|i[2]~0_combout\ : std_logic;
SIGNAL \rec|i[0]~1_combout\ : std_logic;
SIGNAL \rec|i[1]~2_combout\ : std_logic;
SIGNAL \rec|i[2]~3_combout\ : std_logic;
SIGNAL \rec|Decoder0~0_combout\ : std_logic;
SIGNAL \rec|DATA[0]~0_combout\ : std_logic;
SIGNAL \rec|Decoder0~1_combout\ : std_logic;
SIGNAL \rec|DATA[1]~1_combout\ : std_logic;
SIGNAL \rec|Decoder0~2_combout\ : std_logic;
SIGNAL \rec|DATA[2]~2_combout\ : std_logic;
SIGNAL \rec|Decoder0~3_combout\ : std_logic;
SIGNAL \rec|DATA[3]~3_combout\ : std_logic;
SIGNAL \rec|Decoder0~4_combout\ : std_logic;
SIGNAL \rec|DATA[4]~4_combout\ : std_logic;
SIGNAL \rec|Decoder0~5_combout\ : std_logic;
SIGNAL \rec|DATA[5]~5_combout\ : std_logic;
SIGNAL \rec|Decoder0~6_combout\ : std_logic;
SIGNAL \rec|DATA[6]~6_combout\ : std_logic;
SIGNAL \rec|state.stop_bit~0_combout\ : std_logic;
SIGNAL \rec|DATA[7]~7_combout\ : std_logic;
SIGNAL \rec|i\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \rec|cnt\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rec|RX_DATA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \rec|DATA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \rec|ALT_INV_RX_DATA[0]~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
data <= ww_data;
ww_st_en <= st_en;
ww_vector <= vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\rec|ALT_INV_RX_DATA[0]~0_combout\ <= NOT \rec|RX_DATA[0]~0_combout\;

-- Location: LCCOMB_X3_Y1_N2
\rec|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Add0~0_combout\ = \rec|cnt\(0) $ (VCC)
-- \rec|Add0~1\ = CARRY(\rec|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|cnt\(0),
	datad => VCC,
	combout => \rec|Add0~0_combout\,
	cout => \rec|Add0~1\);

-- Location: LCCOMB_X3_Y1_N4
\rec|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Add0~2_combout\ = (\rec|cnt\(1) & (!\rec|Add0~1\)) # (!\rec|cnt\(1) & ((\rec|Add0~1\) # (GND)))
-- \rec|Add0~3\ = CARRY((!\rec|Add0~1\) # (!\rec|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rec|cnt\(1),
	datad => VCC,
	cin => \rec|Add0~1\,
	combout => \rec|Add0~2_combout\,
	cout => \rec|Add0~3\);

-- Location: LCCOMB_X3_Y1_N6
\rec|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Add0~4_combout\ = (\rec|cnt\(2) & (\rec|Add0~3\ $ (GND))) # (!\rec|cnt\(2) & (!\rec|Add0~3\ & VCC))
-- \rec|Add0~5\ = CARRY((\rec|cnt\(2) & !\rec|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rec|cnt\(2),
	datad => VCC,
	cin => \rec|Add0~3\,
	combout => \rec|Add0~4_combout\,
	cout => \rec|Add0~5\);

-- Location: LCCOMB_X3_Y1_N12
\rec|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Add0~10_combout\ = (\rec|cnt\(5) & (!\rec|Add0~9\)) # (!\rec|cnt\(5) & ((\rec|Add0~9\) # (GND)))
-- \rec|Add0~11\ = CARRY((!\rec|Add0~9\) # (!\rec|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rec|cnt\(5),
	datad => VCC,
	cin => \rec|Add0~9\,
	combout => \rec|Add0~10_combout\,
	cout => \rec|Add0~11\);

-- Location: FF_X1_Y1_N15
\rec|state.stop_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|state.stop_bit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|state.stop_bit~q\);

-- Location: LCCOMB_X2_Y1_N12
\rec|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|LessThan1~5_combout\ = (!\rec|cnt\(3) & (((!\rec|cnt\(0)) # (!\rec|cnt\(2))) # (!\rec|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|cnt\(1),
	datab => \rec|cnt\(2),
	datac => \rec|cnt\(3),
	datad => \rec|cnt\(0),
	combout => \rec|LessThan1~5_combout\);

-- Location: FF_X1_Y1_N9
\rec|state.recieve\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|state.recieve~q\);

-- Location: LCCOMB_X1_Y1_N14
\rec|state.stop_bit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|state.stop_bit~1_combout\ = (\rec|state.stop_bit~0_combout\) # ((\rec|state.stop_bit~q\ & ((\rec|LessThan1~7_combout\) # (!\rec|cnt\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|cnt\(12),
	datab => \rec|LessThan1~7_combout\,
	datac => \rec|state.stop_bit~q\,
	datad => \rec|state.stop_bit~0_combout\,
	combout => \rec|state.stop_bit~1_combout\);

-- Location: LCCOMB_X1_Y1_N22
\rec|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Selector16~0_combout\ = (\rec|cnt\(12) & (\rec|i\(0) & \rec|i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|cnt\(12),
	datab => \rec|i\(0),
	datad => \rec|i\(2),
	combout => \rec|Selector16~0_combout\);

-- Location: LCCOMB_X1_Y1_N20
\rec|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Selector16~1_combout\ = (\rec|state.recieve~q\ & (((\rec|LessThan1~7_combout\) # (!\rec|Selector16~0_combout\)) # (!\rec|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|i\(1),
	datab => \rec|state.recieve~q\,
	datac => \rec|Selector16~0_combout\,
	datad => \rec|LessThan1~7_combout\,
	combout => \rec|Selector16~1_combout\);

-- Location: LCCOMB_X1_Y1_N8
\rec|Selector16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Selector16~2_combout\ = (\rec|Selector16~1_combout\) # ((\rec|state.start_bit~q\ & (\rec|Equal0~3_combout\ & !\rst_n~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|state.start_bit~q\,
	datab => \rec|Equal0~3_combout\,
	datac => \rst_n~input_o\,
	datad => \rec|Selector16~1_combout\,
	combout => \rec|Selector16~2_combout\);

-- Location: LCCOMB_X2_Y1_N28
\rec|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|LessThan1~7_combout\ = (\rec|LessThan1~6_combout\) # ((!\rec|cnt\(10) & !\rec|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|cnt\(10),
	datab => \rec|cnt\(11),
	datad => \rec|LessThan1~6_combout\,
	combout => \rec|LessThan1~7_combout\);

-- Location: IOOBUF_X3_Y0_N23
\data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec|RX_DATA\(0),
	devoe => ww_devoe,
	o => \data[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec|RX_DATA\(1),
	devoe => ww_devoe,
	o => \data[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec|RX_DATA\(2),
	devoe => ww_devoe,
	o => \data[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec|RX_DATA\(3),
	devoe => ww_devoe,
	o => \data[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec|RX_DATA\(4),
	devoe => ww_devoe,
	o => \data[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec|RX_DATA\(5),
	devoe => ww_devoe,
	o => \data[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec|RX_DATA\(6),
	devoe => ww_devoe,
	o => \data[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec|RX_DATA\(7),
	devoe => ww_devoe,
	o => \data[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X5_Y0_N8
\rst_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: LCCOMB_X1_Y1_N28
\rec|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Selector15~0_combout\ = (\rec|state.IDLE~q\ & (((\rec|state.start_bit~q\ & !\rec|Equal0~3_combout\)))) # (!\rec|state.IDLE~q\ & (((\rec|state.start_bit~q\ & !\rec|Equal0~3_combout\)) # (!\rst_n~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|state.IDLE~q\,
	datab => \rst_n~input_o\,
	datac => \rec|state.start_bit~q\,
	datad => \rec|Equal0~3_combout\,
	combout => \rec|Selector15~0_combout\);

-- Location: FF_X1_Y1_N29
\rec|state.start_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|state.start_bit~q\);

-- Location: LCCOMB_X1_Y1_N2
\rec|cnt[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|cnt[8]~0_combout\ = (\rec|state.IDLE~q\ & ((!\rec|Equal0~3_combout\) # (!\rec|state.start_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|state.IDLE~q\,
	datab => \rec|state.start_bit~q\,
	datad => \rec|Equal0~3_combout\,
	combout => \rec|cnt[8]~0_combout\);

-- Location: LCCOMB_X2_Y1_N4
\rec|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Add0~34_combout\ = (\rec|Add0~4_combout\ & (!\rec|i[2]~0_combout\ & \rec|cnt[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|Add0~4_combout\,
	datac => \rec|i[2]~0_combout\,
	datad => \rec|cnt[8]~0_combout\,
	combout => \rec|Add0~34_combout\);

-- Location: LCCOMB_X3_Y1_N28
\rec|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Add0~29_combout\ = (\rec|Add0~10_combout\ & (!\rec|i[2]~0_combout\ & \rec|cnt[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|Add0~10_combout\,
	datac => \rec|i[2]~0_combout\,
	datad => \rec|cnt[8]~0_combout\,
	combout => \rec|Add0~29_combout\);

-- Location: FF_X3_Y1_N29
\rec|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|Add0~29_combout\,
	ena => \rec|RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|cnt\(5));

-- Location: LCCOMB_X3_Y1_N8
\rec|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Add0~6_combout\ = (\rec|cnt\(3) & (!\rec|Add0~5\)) # (!\rec|cnt\(3) & ((\rec|Add0~5\) # (GND)))
-- \rec|Add0~7\ = CARRY((!\rec|Add0~5\) # (!\rec|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rec|cnt\(3),
	datad => VCC,
	cin => \rec|Add0~5\,
	combout => \rec|Add0~6_combout\,
	cout => \rec|Add0~7\);

-- Location: LCCOMB_X3_Y1_N10
\rec|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Add0~8_combout\ = (\rec|cnt\(4) & (\rec|Add0~7\ $ (GND))) # (!\rec|cnt\(4) & (!\rec|Add0~7\ & VCC))
-- \rec|Add0~9\ = CARRY((\rec|cnt\(4) & !\rec|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rec|cnt\(4),
	datad => VCC,
	cin => \rec|Add0~7\,
	combout => \rec|Add0~8_combout\,
	cout => \rec|Add0~9\);

-- Location: LCCOMB_X2_Y1_N6
\rec|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Add0~30_combout\ = (!\rec|i[2]~0_combout\ & (\rec|Add0~8_combout\ & \rec|cnt[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|i[2]~0_combout\,
	datac => \rec|Add0~8_combout\,
	datad => \rec|cnt[8]~0_combout\,
	combout => \rec|Add0~30_combout\);

-- Location: FF_X2_Y1_N7
\rec|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|Add0~30_combout\,
	ena => \rec|RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|cnt\(4));

-- Location: LCCOMB_X3_Y1_N14
\rec|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Add0~12_combout\ = (\rec|cnt\(6) & (\rec|Add0~11\ $ (GND))) # (!\rec|cnt\(6) & (!\rec|Add0~11\ & VCC))
-- \rec|Add0~13\ = CARRY((\rec|cnt\(6) & !\rec|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rec|cnt\(6),
	datad => VCC,
	cin => \rec|Add0~11\,
	combout => \rec|Add0~12_combout\,
	cout => \rec|Add0~13\);

-- Location: LCCOMB_X3_Y1_N16
\rec|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Add0~14_combout\ = (\rec|cnt\(7) & (!\rec|Add0~13\)) # (!\rec|cnt\(7) & ((\rec|Add0~13\) # (GND)))
-- \rec|Add0~15\ = CARRY((!\rec|Add0~13\) # (!\rec|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rec|cnt\(7),
	datad => VCC,
	cin => \rec|Add0~13\,
	combout => \rec|Add0~14_combout\,
	cout => \rec|Add0~15\);

-- Location: LCCOMB_X3_Y1_N0
\rec|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Add0~26_combout\ = (\rec|Add0~14_combout\ & (!\rec|i[2]~0_combout\ & \rec|cnt[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec|Add0~14_combout\,
	datac => \rec|i[2]~0_combout\,
	datad => \rec|cnt[8]~0_combout\,
	combout => \rec|Add0~26_combout\);

-- Location: FF_X3_Y1_N1
\rec|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|Add0~26_combout\,
	ena => \rec|RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|cnt\(7));

-- Location: LCCOMB_X3_Y1_N18
\rec|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Add0~16_combout\ = (\rec|cnt\(8) & (\rec|Add0~15\ $ (GND))) # (!\rec|cnt\(8) & (!\rec|Add0~15\ & VCC))
-- \rec|Add0~17\ = CARRY((\rec|cnt\(8) & !\rec|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rec|cnt\(8),
	datad => VCC,
	cin => \rec|Add0~15\,
	combout => \rec|Add0~16_combout\,
	cout => \rec|Add0~17\);

-- Location: LCCOMB_X3_Y1_N20
\rec|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Add0~18_combout\ = (\rec|cnt\(9) & (!\rec|Add0~17\)) # (!\rec|cnt\(9) & ((\rec|Add0~17\) # (GND)))
-- \rec|Add0~19\ = CARRY((!\rec|Add0~17\) # (!\rec|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rec|cnt\(9),
	datad => VCC,
	cin => \rec|Add0~17\,
	combout => \rec|Add0~18_combout\,
	cout => \rec|Add0~19\);

-- Location: LCCOMB_X3_Y1_N22
\rec|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Add0~20_combout\ = (\rec|cnt\(10) & (\rec|Add0~19\ $ (GND))) # (!\rec|cnt\(10) & (!\rec|Add0~19\ & VCC))
-- \rec|Add0~21\ = CARRY((\rec|cnt\(10) & !\rec|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rec|cnt\(10),
	datad => VCC,
	cin => \rec|Add0~19\,
	combout => \rec|Add0~20_combout\,
	cout => \rec|Add0~21\);

-- Location: LCCOMB_X3_Y1_N24
\rec|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Add0~22_combout\ = (\rec|cnt\(11) & (!\rec|Add0~21\)) # (!\rec|cnt\(11) & ((\rec|Add0~21\) # (GND)))
-- \rec|Add0~23\ = CARRY((!\rec|Add0~21\) # (!\rec|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rec|cnt\(11),
	datad => VCC,
	cin => \rec|Add0~21\,
	combout => \rec|Add0~22_combout\,
	cout => \rec|Add0~23\);

-- Location: LCCOMB_X3_Y1_N26
\rec|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Add0~24_combout\ = \rec|Add0~23\ $ (!\rec|cnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rec|cnt\(12),
	cin => \rec|Add0~23\,
	combout => \rec|Add0~24_combout\);

-- Location: LCCOMB_X4_Y1_N2
\rec|cnt[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|cnt[12]~1_combout\ = ((!\rec|i[2]~0_combout\ & (\rec|Add0~24_combout\ & \rec|cnt[8]~0_combout\))) # (!\rec|RX_DATA[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|RX_DATA[0]~0_combout\,
	datab => \rec|i[2]~0_combout\,
	datac => \rec|Add0~24_combout\,
	datad => \rec|cnt[8]~0_combout\,
	combout => \rec|cnt[12]~1_combout\);

-- Location: FF_X4_Y1_N3
\rec|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|cnt[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|cnt\(12));

-- Location: LCCOMB_X3_Y1_N30
\rec|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Add0~31_combout\ = (!\rec|i[2]~0_combout\ & (\rec|Add0~12_combout\ & \rec|cnt[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|i[2]~0_combout\,
	datac => \rec|Add0~12_combout\,
	datad => \rec|cnt[8]~0_combout\,
	combout => \rec|Add0~31_combout\);

-- Location: FF_X3_Y1_N31
\rec|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|Add0~31_combout\,
	ena => \rec|RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|cnt\(6));

-- Location: LCCOMB_X2_Y1_N30
\rec|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|LessThan1~4_combout\ = ((!\rec|cnt\(4) & !\rec|cnt\(5))) # (!\rec|cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|cnt\(4),
	datab => \rec|cnt\(5),
	datad => \rec|cnt\(6),
	combout => \rec|LessThan1~4_combout\);

-- Location: LCCOMB_X2_Y1_N0
\rec|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Add0~27_combout\ = (\rec|cnt[8]~0_combout\ & (!\rec|i[2]~0_combout\ & \rec|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|cnt[8]~0_combout\,
	datac => \rec|i[2]~0_combout\,
	datad => \rec|Add0~16_combout\,
	combout => \rec|Add0~27_combout\);

-- Location: FF_X2_Y1_N1
\rec|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|Add0~27_combout\,
	ena => \rec|RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|cnt\(8));

-- Location: LCCOMB_X1_Y1_N26
\rec|cnt[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|cnt[11]~4_combout\ = (\rec|RX_DATA[0]~0_combout\ & (!\rec|cnt[8]~2_combout\ & ((\rec|Add0~22_combout\)))) # (!\rec|RX_DATA[0]~0_combout\ & (((\rec|cnt\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|RX_DATA[0]~0_combout\,
	datab => \rec|cnt[8]~2_combout\,
	datac => \rec|cnt\(11),
	datad => \rec|Add0~22_combout\,
	combout => \rec|cnt[11]~4_combout\);

-- Location: FF_X1_Y1_N27
\rec|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|cnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|cnt\(11));

-- Location: LCCOMB_X2_Y1_N24
\rec|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|LessThan1~3_combout\ = (!\rec|cnt\(9) & (!\rec|cnt\(8) & (!\rec|cnt\(7) & !\rec|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|cnt\(9),
	datab => \rec|cnt\(8),
	datac => \rec|cnt\(7),
	datad => \rec|cnt\(11),
	combout => \rec|LessThan1~3_combout\);

-- Location: LCCOMB_X2_Y1_N2
\rec|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|LessThan1~6_combout\ = (\rec|LessThan1~3_combout\ & ((\rec|LessThan1~4_combout\) # ((\rec|LessThan1~5_combout\ & !\rec|cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|LessThan1~5_combout\,
	datab => \rec|cnt\(5),
	datac => \rec|LessThan1~4_combout\,
	datad => \rec|LessThan1~3_combout\,
	combout => \rec|LessThan1~6_combout\);

-- Location: LCCOMB_X2_Y1_N20
\rec|RX_DATA[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|RX_DATA[0]~0_combout\ = ((\rec|LessThan1~2_combout\) # ((\rec|LessThan1~6_combout\) # (!\rec|cnt\(12)))) # (!\rec|state.stop_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|state.stop_bit~q\,
	datab => \rec|LessThan1~2_combout\,
	datac => \rec|cnt\(12),
	datad => \rec|LessThan1~6_combout\,
	combout => \rec|RX_DATA[0]~0_combout\);

-- Location: FF_X2_Y1_N5
\rec|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|Add0~34_combout\,
	ena => \rec|RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|cnt\(2));

-- Location: LCCOMB_X2_Y1_N22
\rec|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Add0~33_combout\ = (\rec|Add0~2_combout\ & (!\rec|i[2]~0_combout\ & \rec|cnt[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|Add0~2_combout\,
	datac => \rec|i[2]~0_combout\,
	datad => \rec|cnt[8]~0_combout\,
	combout => \rec|Add0~33_combout\);

-- Location: FF_X2_Y1_N23
\rec|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|Add0~33_combout\,
	ena => \rec|RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|cnt\(1));

-- Location: LCCOMB_X2_Y1_N14
\rec|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Add0~35_combout\ = (!\rec|i[2]~0_combout\ & (\rec|Add0~6_combout\ & \rec|cnt[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|i[2]~0_combout\,
	datac => \rec|Add0~6_combout\,
	datad => \rec|cnt[8]~0_combout\,
	combout => \rec|Add0~35_combout\);

-- Location: FF_X2_Y1_N15
\rec|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|Add0~35_combout\,
	ena => \rec|RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|cnt\(3));

-- Location: LCCOMB_X2_Y1_N18
\rec|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Equal0~1_combout\ = (!\rec|cnt\(4) & (\rec|cnt\(3) & (\rec|cnt\(2) & \rec|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|cnt\(4),
	datab => \rec|cnt\(3),
	datac => \rec|cnt\(2),
	datad => \rec|cnt\(5),
	combout => \rec|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y1_N16
\rec|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Add0~32_combout\ = (\rec|Add0~0_combout\ & (!\rec|i[2]~0_combout\ & \rec|cnt[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|Add0~0_combout\,
	datac => \rec|i[2]~0_combout\,
	datad => \rec|cnt[8]~0_combout\,
	combout => \rec|Add0~32_combout\);

-- Location: FF_X2_Y1_N17
\rec|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|Add0~32_combout\,
	ena => \rec|RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|cnt\(0));

-- Location: LCCOMB_X2_Y1_N8
\rec|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Equal0~0_combout\ = (!\rec|cnt\(1) & (!\rec|cnt\(0) & (!\rec|cnt\(7) & !\rec|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|cnt\(1),
	datab => \rec|cnt\(0),
	datac => \rec|cnt\(7),
	datad => \rec|cnt\(8),
	combout => \rec|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y1_N10
\rec|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Add0~28_combout\ = (!\rec|i[2]~0_combout\ & (\rec|Add0~18_combout\ & \rec|cnt[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|i[2]~0_combout\,
	datac => \rec|Add0~18_combout\,
	datad => \rec|cnt[8]~0_combout\,
	combout => \rec|Add0~28_combout\);

-- Location: FF_X2_Y1_N11
\rec|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|Add0~28_combout\,
	ena => \rec|RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|cnt\(9));

-- Location: LCCOMB_X1_Y1_N0
\rec|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Equal0~2_combout\ = (\rec|cnt\(11) & (!\rec|cnt\(10) & (!\rec|cnt\(6) & \rec|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|cnt\(11),
	datab => \rec|cnt\(10),
	datac => \rec|cnt\(6),
	datad => \rec|cnt\(9),
	combout => \rec|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y1_N18
\rec|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Equal0~3_combout\ = (!\rec|cnt\(12) & (\rec|Equal0~1_combout\ & (\rec|Equal0~0_combout\ & \rec|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|cnt\(12),
	datab => \rec|Equal0~1_combout\,
	datac => \rec|Equal0~0_combout\,
	datad => \rec|Equal0~2_combout\,
	combout => \rec|Equal0~3_combout\);

-- Location: LCCOMB_X1_Y1_N30
\rec|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Selector14~0_combout\ = (\rec|RX_DATA[0]~0_combout\ & ((\rec|cnt[8]~0_combout\) # (!\rst_n~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_n~input_o\,
	datac => \rec|RX_DATA[0]~0_combout\,
	datad => \rec|cnt[8]~0_combout\,
	combout => \rec|Selector14~0_combout\);

-- Location: FF_X1_Y1_N31
\rec|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|state.IDLE~q\);

-- Location: LCCOMB_X1_Y1_N16
\rec|cnt[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|cnt[8]~2_combout\ = ((\rec|i[2]~0_combout\) # ((\rec|state.start_bit~q\ & \rec|Equal0~3_combout\))) # (!\rec|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|state.start_bit~q\,
	datab => \rec|Equal0~3_combout\,
	datac => \rec|state.IDLE~q\,
	datad => \rec|i[2]~0_combout\,
	combout => \rec|cnt[8]~2_combout\);

-- Location: LCCOMB_X1_Y1_N12
\rec|cnt[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|cnt[10]~3_combout\ = (\rec|RX_DATA[0]~0_combout\ & (!\rec|cnt[8]~2_combout\ & ((\rec|Add0~20_combout\)))) # (!\rec|RX_DATA[0]~0_combout\ & (((\rec|cnt\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|RX_DATA[0]~0_combout\,
	datab => \rec|cnt[8]~2_combout\,
	datac => \rec|cnt\(10),
	datad => \rec|Add0~20_combout\,
	combout => \rec|cnt[10]~3_combout\);

-- Location: FF_X1_Y1_N13
\rec|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|cnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|cnt\(10));

-- Location: LCCOMB_X1_Y1_N6
\rec|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|LessThan1~2_combout\ = (!\rec|cnt\(11) & !\rec|cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|cnt\(11),
	datac => \rec|cnt\(10),
	combout => \rec|LessThan1~2_combout\);

-- Location: LCCOMB_X2_Y1_N26
\rec|i[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|i[2]~0_combout\ = (\rec|state.recieve~q\ & (!\rec|LessThan1~2_combout\ & (\rec|cnt\(12) & !\rec|LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|state.recieve~q\,
	datab => \rec|LessThan1~2_combout\,
	datac => \rec|cnt\(12),
	datad => \rec|LessThan1~6_combout\,
	combout => \rec|i[2]~0_combout\);

-- Location: LCCOMB_X4_Y1_N8
\rec|i[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|i[0]~1_combout\ = \rec|i\(0) $ (\rec|i[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec|i\(0),
	datad => \rec|i[2]~0_combout\,
	combout => \rec|i[0]~1_combout\);

-- Location: FF_X4_Y1_N9
\rec|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|i\(0));

-- Location: LCCOMB_X4_Y1_N14
\rec|i[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|i[1]~2_combout\ = \rec|i\(1) $ (((\rec|i\(0) & \rec|i[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec|i\(0),
	datac => \rec|i\(1),
	datad => \rec|i[2]~0_combout\,
	combout => \rec|i[1]~2_combout\);

-- Location: FF_X4_Y1_N15
\rec|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|i[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|i\(1));

-- Location: LCCOMB_X1_Y1_N24
\rec|i[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|i[2]~3_combout\ = \rec|i\(2) $ (((\rec|i\(0) & (\rec|i[2]~0_combout\ & \rec|i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|i\(0),
	datab => \rec|i[2]~0_combout\,
	datac => \rec|i\(2),
	datad => \rec|i\(1),
	combout => \rec|i[2]~3_combout\);

-- Location: FF_X1_Y1_N25
\rec|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|i[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|i\(2));

-- Location: LCCOMB_X4_Y1_N16
\rec|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Decoder0~0_combout\ = (!\rec|i\(1) & (!\rec|i\(2) & (!\rec|i\(0) & \rec|i[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|i\(1),
	datab => \rec|i\(2),
	datac => \rec|i\(0),
	datad => \rec|i[2]~0_combout\,
	combout => \rec|Decoder0~0_combout\);

-- Location: LCCOMB_X4_Y1_N20
\rec|DATA[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|DATA[0]~0_combout\ = (\rec|Decoder0~0_combout\ & (\rst_n~input_o\)) # (!\rec|Decoder0~0_combout\ & ((\rec|DATA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_n~input_o\,
	datac => \rec|DATA\(0),
	datad => \rec|Decoder0~0_combout\,
	combout => \rec|DATA[0]~0_combout\);

-- Location: FF_X4_Y1_N21
\rec|DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|DATA\(0));

-- Location: FF_X3_Y1_N19
\rec|RX_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rec|DATA\(0),
	sload => VCC,
	ena => \rec|ALT_INV_RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|RX_DATA\(0));

-- Location: LCCOMB_X4_Y1_N18
\rec|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Decoder0~1_combout\ = (!\rec|i\(1) & (!\rec|i\(2) & (\rec|i\(0) & \rec|i[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|i\(1),
	datab => \rec|i\(2),
	datac => \rec|i\(0),
	datad => \rec|i[2]~0_combout\,
	combout => \rec|Decoder0~1_combout\);

-- Location: LCCOMB_X4_Y1_N28
\rec|DATA[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|DATA[1]~1_combout\ = (\rec|Decoder0~1_combout\ & (\rst_n~input_o\)) # (!\rec|Decoder0~1_combout\ & ((\rec|DATA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_n~input_o\,
	datac => \rec|DATA\(1),
	datad => \rec|Decoder0~1_combout\,
	combout => \rec|DATA[1]~1_combout\);

-- Location: FF_X4_Y1_N29
\rec|DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|DATA[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|DATA\(1));

-- Location: FF_X2_Y1_N29
\rec|RX_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rec|DATA\(1),
	sload => VCC,
	ena => \rec|ALT_INV_RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|RX_DATA\(1));

-- Location: LCCOMB_X4_Y1_N24
\rec|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Decoder0~2_combout\ = (\rec|i\(1) & (!\rec|i\(2) & (!\rec|i\(0) & \rec|i[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|i\(1),
	datab => \rec|i\(2),
	datac => \rec|i\(0),
	datad => \rec|i[2]~0_combout\,
	combout => \rec|Decoder0~2_combout\);

-- Location: LCCOMB_X4_Y1_N10
\rec|DATA[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|DATA[2]~2_combout\ = (\rec|Decoder0~2_combout\ & (\rst_n~input_o\)) # (!\rec|Decoder0~2_combout\ & ((\rec|DATA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_n~input_o\,
	datac => \rec|DATA\(2),
	datad => \rec|Decoder0~2_combout\,
	combout => \rec|DATA[2]~2_combout\);

-- Location: FF_X4_Y1_N11
\rec|DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|DATA[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|DATA\(2));

-- Location: FF_X3_Y1_N15
\rec|RX_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rec|DATA\(2),
	sload => VCC,
	ena => \rec|ALT_INV_RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|RX_DATA\(2));

-- Location: LCCOMB_X5_Y1_N0
\rec|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Decoder0~3_combout\ = (\rec|i\(1) & (!\rec|i\(2) & (\rec|i[2]~0_combout\ & \rec|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|i\(1),
	datab => \rec|i\(2),
	datac => \rec|i[2]~0_combout\,
	datad => \rec|i\(0),
	combout => \rec|Decoder0~3_combout\);

-- Location: LCCOMB_X5_Y1_N4
\rec|DATA[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|DATA[3]~3_combout\ = (\rec|Decoder0~3_combout\ & (\rst_n~input_o\)) # (!\rec|Decoder0~3_combout\ & ((\rec|DATA\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_n~input_o\,
	datac => \rec|DATA\(3),
	datad => \rec|Decoder0~3_combout\,
	combout => \rec|DATA[3]~3_combout\);

-- Location: FF_X5_Y1_N5
\rec|DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|DATA[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|DATA\(3));

-- Location: FF_X1_Y1_N3
\rec|RX_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rec|DATA\(3),
	sload => VCC,
	ena => \rec|ALT_INV_RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|RX_DATA\(3));

-- Location: LCCOMB_X4_Y1_N6
\rec|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Decoder0~4_combout\ = (!\rec|i\(1) & (\rec|i\(2) & (!\rec|i\(0) & \rec|i[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|i\(1),
	datab => \rec|i\(2),
	datac => \rec|i\(0),
	datad => \rec|i[2]~0_combout\,
	combout => \rec|Decoder0~4_combout\);

-- Location: LCCOMB_X4_Y1_N12
\rec|DATA[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|DATA[4]~4_combout\ = (\rec|Decoder0~4_combout\ & (\rst_n~input_o\)) # (!\rec|Decoder0~4_combout\ & ((\rec|DATA\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_n~input_o\,
	datac => \rec|DATA\(4),
	datad => \rec|Decoder0~4_combout\,
	combout => \rec|DATA[4]~4_combout\);

-- Location: FF_X4_Y1_N13
\rec|DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|DATA[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|DATA\(4));

-- Location: FF_X3_Y1_N5
\rec|RX_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rec|DATA\(4),
	sload => VCC,
	ena => \rec|ALT_INV_RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|RX_DATA\(4));

-- Location: LCCOMB_X5_Y1_N2
\rec|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Decoder0~5_combout\ = (!\rec|i\(1) & (\rec|i\(2) & (\rec|i[2]~0_combout\ & \rec|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|i\(1),
	datab => \rec|i\(2),
	datac => \rec|i[2]~0_combout\,
	datad => \rec|i\(0),
	combout => \rec|Decoder0~5_combout\);

-- Location: LCCOMB_X5_Y1_N6
\rec|DATA[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|DATA[5]~5_combout\ = (\rec|Decoder0~5_combout\ & (\rst_n~input_o\)) # (!\rec|Decoder0~5_combout\ & ((\rec|DATA\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_n~input_o\,
	datac => \rec|DATA\(5),
	datad => \rec|Decoder0~5_combout\,
	combout => \rec|DATA[5]~5_combout\);

-- Location: FF_X5_Y1_N7
\rec|DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|DATA[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|DATA\(5));

-- Location: FF_X2_Y1_N31
\rec|RX_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rec|DATA\(5),
	sload => VCC,
	ena => \rec|ALT_INV_RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|RX_DATA\(5));

-- Location: LCCOMB_X4_Y1_N0
\rec|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|Decoder0~6_combout\ = (\rec|i\(1) & (\rec|i\(2) & (!\rec|i\(0) & \rec|i[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|i\(1),
	datab => \rec|i\(2),
	datac => \rec|i\(0),
	datad => \rec|i[2]~0_combout\,
	combout => \rec|Decoder0~6_combout\);

-- Location: LCCOMB_X4_Y1_N30
\rec|DATA[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|DATA[6]~6_combout\ = (\rec|Decoder0~6_combout\ & (\rst_n~input_o\)) # (!\rec|Decoder0~6_combout\ & ((\rec|DATA\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_n~input_o\,
	datac => \rec|DATA\(6),
	datad => \rec|Decoder0~6_combout\,
	combout => \rec|DATA[6]~6_combout\);

-- Location: FF_X4_Y1_N31
\rec|DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|DATA[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|DATA\(6));

-- Location: FF_X3_Y1_N3
\rec|RX_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rec|DATA\(6),
	sload => VCC,
	ena => \rec|ALT_INV_RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|RX_DATA\(6));

-- Location: LCCOMB_X1_Y1_N10
\rec|state.stop_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|state.stop_bit~0_combout\ = (\rec|i\(1) & (\rec|i\(2) & (\rec|i\(0) & \rec|i[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec|i\(1),
	datab => \rec|i\(2),
	datac => \rec|i\(0),
	datad => \rec|i[2]~0_combout\,
	combout => \rec|state.stop_bit~0_combout\);

-- Location: LCCOMB_X1_Y1_N4
\rec|DATA[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rec|DATA[7]~7_combout\ = (\rec|state.stop_bit~0_combout\ & (\rst_n~input_o\)) # (!\rec|state.stop_bit~0_combout\ & ((\rec|DATA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_n~input_o\,
	datac => \rec|DATA\(7),
	datad => \rec|state.stop_bit~0_combout\,
	combout => \rec|DATA[7]~7_combout\);

-- Location: FF_X1_Y1_N5
\rec|DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rec|DATA[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|DATA\(7));

-- Location: FF_X1_Y1_N23
\rec|RX_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rec|DATA\(7),
	sload => VCC,
	ena => \rec|ALT_INV_RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec|RX_DATA\(7));

-- Location: IOIBUF_X62_Y73_N22
\vector[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vector(0),
	o => \vector[0]~input_o\);

-- Location: IOIBUF_X0_Y20_N15
\vector[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vector(1),
	o => \vector[1]~input_o\);

-- Location: IOIBUF_X111_Y73_N8
\vector[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vector(2),
	o => \vector[2]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\vector[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vector(3),
	o => \vector[3]~input_o\);

-- Location: IOIBUF_X31_Y73_N8
\vector[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vector(4),
	o => \vector[4]~input_o\);

-- Location: IOIBUF_X38_Y73_N8
\vector[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vector(5),
	o => \vector[5]~input_o\);

-- Location: IOIBUF_X0_Y66_N15
\vector[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vector(6),
	o => \vector[6]~input_o\);

-- Location: IOIBUF_X105_Y0_N8
\vector[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vector(7),
	o => \vector[7]~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\st_en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_st_en,
	o => \st_en~input_o\);

ww_data(0) <= \data[0]~output_o\;

ww_data(1) <= \data[1]~output_o\;

ww_data(2) <= \data[2]~output_o\;

ww_data(3) <= \data[3]~output_o\;

ww_data(4) <= \data[4]~output_o\;

ww_data(5) <= \data[5]~output_o\;

ww_data(6) <= \data[6]~output_o\;

ww_data(7) <= \data[7]~output_o\;
END structure;


