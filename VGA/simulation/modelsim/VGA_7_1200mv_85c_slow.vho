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

-- DATE "11/14/2022 16:02:25"

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

ENTITY 	VGA IS
    PORT (
	CLK_I : IN std_logic;
	RST : IN std_logic;
	vga_blank_n : OUT std_logic;
	vga_sync_n : OUT std_logic;
	VGA_CLK : OUT std_logic;
	hsync : OUT std_logic;
	vsync : OUT std_logic;
	R : OUT std_logic_vector(7 DOWNTO 0);
	G : OUT std_logic_vector(7 DOWNTO 0);
	Bl : OUT std_logic_vector(7 DOWNTO 0)
	);
END VGA;

-- Design Ports Information
-- vga_blank_n	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_sync_n	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_CLK	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hsync	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vsync	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[5]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[6]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[7]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[0]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[1]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[2]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[3]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[5]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[6]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[7]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bl[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bl[1]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bl[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bl[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bl[4]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bl[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bl[6]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bl[7]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_I	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VGA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_I : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_vga_blank_n : std_logic;
SIGNAL ww_vga_sync_n : std_logic;
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_hsync : std_logic;
SIGNAL ww_vsync : std_logic;
SIGNAL ww_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Bl : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \string_cnt[2]~14_combout\ : std_logic;
SIGNAL \string_cnt[5]~20_combout\ : std_logic;
SIGNAL \h_blank_n~0_combout\ : std_logic;
SIGNAL \vsync~0_combout\ : std_logic;
SIGNAL \vga_blank_n~output_o\ : std_logic;
SIGNAL \vga_sync_n~output_o\ : std_logic;
SIGNAL \VGA_CLK~output_o\ : std_logic;
SIGNAL \hsync~output_o\ : std_logic;
SIGNAL \vsync~output_o\ : std_logic;
SIGNAL \R[0]~output_o\ : std_logic;
SIGNAL \R[1]~output_o\ : std_logic;
SIGNAL \R[2]~output_o\ : std_logic;
SIGNAL \R[3]~output_o\ : std_logic;
SIGNAL \R[4]~output_o\ : std_logic;
SIGNAL \R[5]~output_o\ : std_logic;
SIGNAL \R[6]~output_o\ : std_logic;
SIGNAL \R[7]~output_o\ : std_logic;
SIGNAL \G[0]~output_o\ : std_logic;
SIGNAL \G[1]~output_o\ : std_logic;
SIGNAL \G[2]~output_o\ : std_logic;
SIGNAL \G[3]~output_o\ : std_logic;
SIGNAL \G[4]~output_o\ : std_logic;
SIGNAL \G[5]~output_o\ : std_logic;
SIGNAL \G[6]~output_o\ : std_logic;
SIGNAL \G[7]~output_o\ : std_logic;
SIGNAL \Bl[0]~output_o\ : std_logic;
SIGNAL \Bl[1]~output_o\ : std_logic;
SIGNAL \Bl[2]~output_o\ : std_logic;
SIGNAL \Bl[3]~output_o\ : std_logic;
SIGNAL \Bl[4]~output_o\ : std_logic;
SIGNAL \Bl[5]~output_o\ : std_logic;
SIGNAL \Bl[6]~output_o\ : std_logic;
SIGNAL \Bl[7]~output_o\ : std_logic;
SIGNAL \cnt[0]~11\ : std_logic;
SIGNAL \cnt[1]~13\ : std_logic;
SIGNAL \cnt[2]~14_combout\ : std_logic;
SIGNAL \cnt[7]~26\ : std_logic;
SIGNAL \cnt[8]~28\ : std_logic;
SIGNAL \cnt[9]~29_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \cnt[8]~27_combout\ : std_logic;
SIGNAL \cnt[9]~22_combout\ : std_logic;
SIGNAL \cnt[2]~15\ : std_logic;
SIGNAL \cnt[3]~16_combout\ : std_logic;
SIGNAL \cnt[3]~17\ : std_logic;
SIGNAL \cnt[4]~18_combout\ : std_logic;
SIGNAL \cnt[4]~19\ : std_logic;
SIGNAL \cnt[5]~21\ : std_logic;
SIGNAL \cnt[6]~23_combout\ : std_logic;
SIGNAL \cnt[6]~24\ : std_logic;
SIGNAL \cnt[7]~25_combout\ : std_logic;
SIGNAL \cnt[5]~20_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \cnt[1]~12_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \h_blank_n~1_combout\ : std_logic;
SIGNAL \h_blank_n~2_combout\ : std_logic;
SIGNAL \h_blank_n~q\ : std_logic;
SIGNAL \string_cnt[0]~10_combout\ : std_logic;
SIGNAL \string_cnt[3]~17\ : std_logic;
SIGNAL \string_cnt[4]~19\ : std_logic;
SIGNAL \string_cnt[5]~21\ : std_logic;
SIGNAL \string_cnt[6]~22_combout\ : std_logic;
SIGNAL \cnt[0]~10_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \Bl[2]~0_combout\ : std_logic;
SIGNAL \v_blank_n~5_combout\ : std_logic;
SIGNAL \string_cnt[6]~23\ : std_logic;
SIGNAL \string_cnt[7]~24_combout\ : std_logic;
SIGNAL \string_cnt[7]~25\ : std_logic;
SIGNAL \string_cnt[8]~26_combout\ : std_logic;
SIGNAL \string_cnt[8]~27\ : std_logic;
SIGNAL \string_cnt[9]~28_combout\ : std_logic;
SIGNAL \v_blank_n~0_combout\ : std_logic;
SIGNAL \string_cnt[4]~18_combout\ : std_logic;
SIGNAL \LessThan9~0_combout\ : std_logic;
SIGNAL \v_blank_n~2_combout\ : std_logic;
SIGNAL \string_cnt[0]~11\ : std_logic;
SIGNAL \string_cnt[1]~12_combout\ : std_logic;
SIGNAL \string_cnt[1]~13\ : std_logic;
SIGNAL \string_cnt[2]~15\ : std_logic;
SIGNAL \string_cnt[3]~16_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \LessThan8~1_combout\ : std_logic;
SIGNAL \v_blank_n~1_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \v_blank_n~3_combout\ : std_logic;
SIGNAL \v_blank_n~4_combout\ : std_logic;
SIGNAL \v_blank_n~q\ : std_logic;
SIGNAL \vga_blank_n~0_combout\ : std_logic;
SIGNAL \CLK_I~input_o\ : std_logic;
SIGNAL \CLK~0_combout\ : std_logic;
SIGNAL \CLK~feeder_combout\ : std_logic;
SIGNAL \CLK~q\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \hsync~2_combout\ : std_logic;
SIGNAL \hsync~reg0_q\ : std_logic;
SIGNAL \vsync~1_combout\ : std_logic;
SIGNAL \vsync~reg0_q\ : std_logic;
SIGNAL \Bl~1_combout\ : std_logic;
SIGNAL \R~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \R[1]~1_combout\ : std_logic;
SIGNAL \R[1]~reg0_q\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \G[1]~reg0_q\ : std_logic;
SIGNAL \Bl~2_combout\ : std_logic;
SIGNAL \Bl[0]~reg0_q\ : std_logic;
SIGNAL string_cnt : std_logic_vector(9 DOWNTO 0);
SIGNAL cnt : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_RST~input_o\ : std_logic;

BEGIN

ww_CLK_I <= CLK_I;
ww_RST <= RST;
vga_blank_n <= ww_vga_blank_n;
vga_sync_n <= ww_vga_sync_n;
VGA_CLK <= ww_VGA_CLK;
hsync <= ww_hsync;
vsync <= ww_vsync;
R <= ww_R;
G <= ww_G;
Bl <= ww_Bl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~q\);
\ALT_INV_RST~input_o\ <= NOT \RST~input_o\;

-- Location: FF_X112_Y19_N7
\string_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \string_cnt[2]~14_combout\,
	sclr => \v_blank_n~2_combout\,
	ena => \v_blank_n~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => string_cnt(2));

-- Location: FF_X112_Y19_N13
\string_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \string_cnt[5]~20_combout\,
	sclr => \v_blank_n~2_combout\,
	ena => \v_blank_n~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => string_cnt(5));

-- Location: LCCOMB_X112_Y19_N6
\string_cnt[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_cnt[2]~14_combout\ = (string_cnt(2) & (\string_cnt[1]~13\ $ (GND))) # (!string_cnt(2) & (!\string_cnt[1]~13\ & VCC))
-- \string_cnt[2]~15\ = CARRY((string_cnt(2) & !\string_cnt[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => string_cnt(2),
	datad => VCC,
	cin => \string_cnt[1]~13\,
	combout => \string_cnt[2]~14_combout\,
	cout => \string_cnt[2]~15\);

-- Location: LCCOMB_X112_Y19_N12
\string_cnt[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_cnt[5]~20_combout\ = (string_cnt(5) & (!\string_cnt[4]~19\)) # (!string_cnt(5) & ((\string_cnt[4]~19\) # (GND)))
-- \string_cnt[5]~21\ = CARRY((!\string_cnt[4]~19\) # (!string_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => string_cnt(5),
	datad => VCC,
	cin => \string_cnt[4]~19\,
	combout => \string_cnt[5]~20_combout\,
	cout => \string_cnt[5]~21\);

-- Location: LCCOMB_X109_Y19_N30
\h_blank_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_blank_n~0_combout\ = (cnt(9) & (!cnt(8))) # (!cnt(9) & ((\h_blank_n~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(8),
	datac => \h_blank_n~q\,
	datad => cnt(9),
	combout => \h_blank_n~0_combout\);

-- Location: LCCOMB_X111_Y19_N26
\vsync~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vsync~0_combout\ = (string_cnt(9)) # ((string_cnt(1)) # ((!\LessThan8~0_combout\) # (!\v_blank_n~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => string_cnt(9),
	datab => string_cnt(1),
	datac => \v_blank_n~0_combout\,
	datad => \LessThan8~0_combout\,
	combout => \vsync~0_combout\);

-- Location: IOOBUF_X115_Y17_N2
\vga_blank_n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_blank_n~0_combout\,
	devoe => ww_devoe,
	o => \vga_blank_n~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\vga_sync_n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vga_sync_n~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\VGA_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLK~q\,
	devoe => ww_devoe,
	o => \VGA_CLK~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\hsync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hsync~reg0_q\,
	devoe => ww_devoe,
	o => \hsync~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\vsync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vsync~reg0_q\,
	devoe => ww_devoe,
	o => \vsync~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \R[0]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R[1]~reg0_q\,
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R[1]~reg0_q\,
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R[1]~reg0_q\,
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOOBUF_X115_Y61_N16
\R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \R[4]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R[1]~reg0_q\,
	devoe => ww_devoe,
	o => \R[5]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R[1]~reg0_q\,
	devoe => ww_devoe,
	o => \R[6]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R[1]~reg0_q\,
	devoe => ww_devoe,
	o => \R[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \G[0]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G[1]~reg0_q\,
	devoe => ww_devoe,
	o => \G[1]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bl[0]~reg0_q\,
	devoe => ww_devoe,
	o => \G[2]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \G[3]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \G[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G[1]~reg0_q\,
	devoe => ww_devoe,
	o => \G[5]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\G[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G[1]~reg0_q\,
	devoe => ww_devoe,
	o => \G[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\G[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G[1]~reg0_q\,
	devoe => ww_devoe,
	o => \G[7]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\Bl[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bl[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Bl[0]~output_o\);

-- Location: IOOBUF_X115_Y15_N9
\Bl[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bl[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Bl[1]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\Bl[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Bl[2]~output_o\);

-- Location: IOOBUF_X115_Y14_N9
\Bl[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bl[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Bl[3]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\Bl[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Bl[4]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\Bl[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Bl[5]~output_o\);

-- Location: IOOBUF_X115_Y14_N2
\Bl[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bl[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Bl[6]~output_o\);

-- Location: IOOBUF_X115_Y13_N2
\Bl[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bl[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Bl[7]~output_o\);

-- Location: LCCOMB_X110_Y19_N10
\cnt[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[0]~10_combout\ = cnt(0) $ (VCC)
-- \cnt[0]~11\ = CARRY(cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datad => VCC,
	combout => \cnt[0]~10_combout\,
	cout => \cnt[0]~11\);

-- Location: LCCOMB_X110_Y19_N12
\cnt[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[1]~12_combout\ = (cnt(1) & (!\cnt[0]~11\)) # (!cnt(1) & ((\cnt[0]~11\) # (GND)))
-- \cnt[1]~13\ = CARRY((!\cnt[0]~11\) # (!cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datad => VCC,
	cin => \cnt[0]~11\,
	combout => \cnt[1]~12_combout\,
	cout => \cnt[1]~13\);

-- Location: LCCOMB_X110_Y19_N14
\cnt[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[2]~14_combout\ = (cnt(2) & (\cnt[1]~13\ $ (GND))) # (!cnt(2) & (!\cnt[1]~13\ & VCC))
-- \cnt[2]~15\ = CARRY((cnt(2) & !\cnt[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(2),
	datad => VCC,
	cin => \cnt[1]~13\,
	combout => \cnt[2]~14_combout\,
	cout => \cnt[2]~15\);

-- Location: LCCOMB_X110_Y19_N24
\cnt[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[7]~25_combout\ = (cnt(7) & (!\cnt[6]~24\)) # (!cnt(7) & ((\cnt[6]~24\) # (GND)))
-- \cnt[7]~26\ = CARRY((!\cnt[6]~24\) # (!cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(7),
	datad => VCC,
	cin => \cnt[6]~24\,
	combout => \cnt[7]~25_combout\,
	cout => \cnt[7]~26\);

-- Location: LCCOMB_X110_Y19_N26
\cnt[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[8]~27_combout\ = (cnt(8) & (\cnt[7]~26\ $ (GND))) # (!cnt(8) & (!\cnt[7]~26\ & VCC))
-- \cnt[8]~28\ = CARRY((cnt(8) & !\cnt[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(8),
	datad => VCC,
	cin => \cnt[7]~26\,
	combout => \cnt[8]~27_combout\,
	cout => \cnt[8]~28\);

-- Location: LCCOMB_X110_Y19_N28
\cnt[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[9]~29_combout\ = \cnt[8]~28\ $ (cnt(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt(9),
	cin => \cnt[8]~28\,
	combout => \cnt[9]~29_combout\);

-- Location: IOIBUF_X115_Y19_N8
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: FF_X110_Y19_N29
\cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \cnt[9]~29_combout\,
	sclr => \cnt[9]~22_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(9));

-- Location: FF_X110_Y19_N27
\cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \cnt[8]~27_combout\,
	sclr => \cnt[9]~22_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(8));

-- Location: LCCOMB_X111_Y19_N10
\cnt[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[9]~22_combout\ = (cnt(9) & (cnt(8) & !\LessThan5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(9),
	datac => cnt(8),
	datad => \LessThan5~2_combout\,
	combout => \cnt[9]~22_combout\);

-- Location: FF_X110_Y19_N15
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \cnt[2]~14_combout\,
	sclr => \cnt[9]~22_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LCCOMB_X110_Y19_N16
\cnt[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[3]~16_combout\ = (cnt(3) & (!\cnt[2]~15\)) # (!cnt(3) & ((\cnt[2]~15\) # (GND)))
-- \cnt[3]~17\ = CARRY((!\cnt[2]~15\) # (!cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(3),
	datad => VCC,
	cin => \cnt[2]~15\,
	combout => \cnt[3]~16_combout\,
	cout => \cnt[3]~17\);

-- Location: FF_X110_Y19_N17
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \cnt[3]~16_combout\,
	sclr => \cnt[9]~22_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LCCOMB_X110_Y19_N18
\cnt[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[4]~18_combout\ = (cnt(4) & (\cnt[3]~17\ $ (GND))) # (!cnt(4) & (!\cnt[3]~17\ & VCC))
-- \cnt[4]~19\ = CARRY((cnt(4) & !\cnt[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(4),
	datad => VCC,
	cin => \cnt[3]~17\,
	combout => \cnt[4]~18_combout\,
	cout => \cnt[4]~19\);

-- Location: FF_X110_Y19_N19
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \cnt[4]~18_combout\,
	sclr => \cnt[9]~22_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: LCCOMB_X110_Y19_N20
\cnt[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[5]~20_combout\ = (cnt(5) & (!\cnt[4]~19\)) # (!cnt(5) & ((\cnt[4]~19\) # (GND)))
-- \cnt[5]~21\ = CARRY((!\cnt[4]~19\) # (!cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(5),
	datad => VCC,
	cin => \cnt[4]~19\,
	combout => \cnt[5]~20_combout\,
	cout => \cnt[5]~21\);

-- Location: LCCOMB_X110_Y19_N22
\cnt[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[6]~23_combout\ = (cnt(6) & (\cnt[5]~21\ $ (GND))) # (!cnt(6) & (!\cnt[5]~21\ & VCC))
-- \cnt[6]~24\ = CARRY((cnt(6) & !\cnt[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(6),
	datad => VCC,
	cin => \cnt[5]~21\,
	combout => \cnt[6]~23_combout\,
	cout => \cnt[6]~24\);

-- Location: FF_X110_Y19_N23
\cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \cnt[6]~23_combout\,
	sclr => \cnt[9]~22_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(6));

-- Location: FF_X110_Y19_N25
\cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \cnt[7]~25_combout\,
	sclr => \cnt[9]~22_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(7));

-- Location: FF_X110_Y19_N21
\cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \cnt[5]~20_combout\,
	sclr => \cnt[9]~22_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(5));

-- Location: LCCOMB_X110_Y19_N4
\LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (!cnt(6) & !cnt(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt(6),
	datad => cnt(5),
	combout => \LessThan5~0_combout\);

-- Location: FF_X110_Y19_N13
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \cnt[1]~12_combout\,
	sclr => \cnt[9]~22_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: LCCOMB_X110_Y19_N2
\LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (!cnt(3) & (((!cnt(1)) # (!cnt(2))) # (!cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => cnt(3),
	datac => cnt(2),
	datad => cnt(1),
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X110_Y19_N8
\LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = (!cnt(7) & (\LessThan5~0_combout\ & ((\LessThan5~1_combout\) # (!cnt(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	datab => cnt(7),
	datac => \LessThan5~0_combout\,
	datad => \LessThan5~1_combout\,
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X109_Y19_N4
\LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = (\LessThan4~0_combout\ & (!cnt(4) & (!cnt(7) & \LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datab => cnt(4),
	datac => cnt(7),
	datad => \LessThan5~0_combout\,
	combout => \LessThan4~2_combout\);

-- Location: LCCOMB_X109_Y19_N18
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!cnt(4) & (((!cnt(3)) # (!cnt(1))) # (!cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	datab => cnt(2),
	datac => cnt(1),
	datad => cnt(3),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X109_Y19_N16
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!cnt(8) & (((\LessThan5~0_combout\ & \LessThan1~0_combout\)) # (!cnt(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datab => cnt(7),
	datac => cnt(8),
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X109_Y19_N2
\h_blank_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_blank_n~1_combout\ = (\h_blank_n~0_combout\) # ((cnt(9) & (\LessThan4~2_combout\)) # (!cnt(9) & ((!\LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_blank_n~0_combout\,
	datab => cnt(9),
	datac => \LessThan4~2_combout\,
	datad => \LessThan1~1_combout\,
	combout => \h_blank_n~1_combout\);

-- Location: LCCOMB_X109_Y19_N0
\h_blank_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_blank_n~2_combout\ = (!\LessThan0~2_combout\ & ((\h_blank_n~1_combout\) # ((!\LessThan5~2_combout\ & \h_blank_n~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \LessThan5~2_combout\,
	datac => \h_blank_n~q\,
	datad => \h_blank_n~1_combout\,
	combout => \h_blank_n~2_combout\);

-- Location: FF_X109_Y19_N1
h_blank_n : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \h_blank_n~2_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_blank_n~q\);

-- Location: LCCOMB_X112_Y19_N2
\string_cnt[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_cnt[0]~10_combout\ = string_cnt(0) $ (VCC)
-- \string_cnt[0]~11\ = CARRY(string_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => string_cnt(0),
	datad => VCC,
	combout => \string_cnt[0]~10_combout\,
	cout => \string_cnt[0]~11\);

-- Location: LCCOMB_X112_Y19_N8
\string_cnt[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_cnt[3]~16_combout\ = (string_cnt(3) & (!\string_cnt[2]~15\)) # (!string_cnt(3) & ((\string_cnt[2]~15\) # (GND)))
-- \string_cnt[3]~17\ = CARRY((!\string_cnt[2]~15\) # (!string_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => string_cnt(3),
	datad => VCC,
	cin => \string_cnt[2]~15\,
	combout => \string_cnt[3]~16_combout\,
	cout => \string_cnt[3]~17\);

-- Location: LCCOMB_X112_Y19_N10
\string_cnt[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_cnt[4]~18_combout\ = (string_cnt(4) & (\string_cnt[3]~17\ $ (GND))) # (!string_cnt(4) & (!\string_cnt[3]~17\ & VCC))
-- \string_cnt[4]~19\ = CARRY((string_cnt(4) & !\string_cnt[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => string_cnt(4),
	datad => VCC,
	cin => \string_cnt[3]~17\,
	combout => \string_cnt[4]~18_combout\,
	cout => \string_cnt[4]~19\);

-- Location: LCCOMB_X112_Y19_N14
\string_cnt[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_cnt[6]~22_combout\ = (string_cnt(6) & (\string_cnt[5]~21\ $ (GND))) # (!string_cnt(6) & (!\string_cnt[5]~21\ & VCC))
-- \string_cnt[6]~23\ = CARRY((string_cnt(6) & !\string_cnt[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => string_cnt(6),
	datad => VCC,
	cin => \string_cnt[5]~21\,
	combout => \string_cnt[6]~22_combout\,
	cout => \string_cnt[6]~23\);

-- Location: FF_X110_Y19_N11
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \cnt[0]~10_combout\,
	sclr => \cnt[9]~22_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LCCOMB_X110_Y19_N30
\LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = ((!cnt(1) & (!cnt(2) & !cnt(0)))) # (!cnt(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => cnt(3),
	datac => cnt(2),
	datad => cnt(0),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X110_Y19_N0
\LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (!cnt(6) & (!cnt(7) & (!cnt(5) & !cnt(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datab => cnt(7),
	datac => cnt(5),
	datad => cnt(4),
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X110_Y19_N6
\Bl[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bl[2]~0_combout\ = (cnt(8) & (cnt(9) & ((!\LessThan4~1_combout\) # (!\LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(8),
	datab => cnt(9),
	datac => \LessThan4~0_combout\,
	datad => \LessThan4~1_combout\,
	combout => \Bl[2]~0_combout\);

-- Location: LCCOMB_X111_Y19_N24
\v_blank_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_blank_n~5_combout\ = (!\RST~input_o\ & (\Bl[2]~0_combout\ & !\LessThan5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \Bl[2]~0_combout\,
	datad => \LessThan5~2_combout\,
	combout => \v_blank_n~5_combout\);

-- Location: FF_X112_Y19_N15
\string_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \string_cnt[6]~22_combout\,
	sclr => \v_blank_n~2_combout\,
	ena => \v_blank_n~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => string_cnt(6));

-- Location: LCCOMB_X112_Y19_N16
\string_cnt[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_cnt[7]~24_combout\ = (string_cnt(7) & (!\string_cnt[6]~23\)) # (!string_cnt(7) & ((\string_cnt[6]~23\) # (GND)))
-- \string_cnt[7]~25\ = CARRY((!\string_cnt[6]~23\) # (!string_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => string_cnt(7),
	datad => VCC,
	cin => \string_cnt[6]~23\,
	combout => \string_cnt[7]~24_combout\,
	cout => \string_cnt[7]~25\);

-- Location: FF_X112_Y19_N17
\string_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \string_cnt[7]~24_combout\,
	sclr => \v_blank_n~2_combout\,
	ena => \v_blank_n~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => string_cnt(7));

-- Location: LCCOMB_X112_Y19_N18
\string_cnt[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_cnt[8]~26_combout\ = (string_cnt(8) & (\string_cnt[7]~25\ $ (GND))) # (!string_cnt(8) & (!\string_cnt[7]~25\ & VCC))
-- \string_cnt[8]~27\ = CARRY((string_cnt(8) & !\string_cnt[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => string_cnt(8),
	datad => VCC,
	cin => \string_cnt[7]~25\,
	combout => \string_cnt[8]~26_combout\,
	cout => \string_cnt[8]~27\);

-- Location: FF_X112_Y19_N19
\string_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \string_cnt[8]~26_combout\,
	sclr => \v_blank_n~2_combout\,
	ena => \v_blank_n~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => string_cnt(8));

-- Location: LCCOMB_X112_Y19_N20
\string_cnt[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_cnt[9]~28_combout\ = \string_cnt[8]~27\ $ (string_cnt(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => string_cnt(9),
	cin => \string_cnt[8]~27\,
	combout => \string_cnt[9]~28_combout\);

-- Location: FF_X112_Y19_N21
\string_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \string_cnt[9]~28_combout\,
	sclr => \v_blank_n~2_combout\,
	ena => \v_blank_n~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => string_cnt(9));

-- Location: LCCOMB_X112_Y19_N30
\v_blank_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_blank_n~0_combout\ = (!string_cnt(5) & (!string_cnt(8) & (!string_cnt(6) & !string_cnt(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => string_cnt(5),
	datab => string_cnt(8),
	datac => string_cnt(6),
	datad => string_cnt(7),
	combout => \v_blank_n~0_combout\);

-- Location: FF_X112_Y19_N11
\string_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \string_cnt[4]~18_combout\,
	sclr => \v_blank_n~2_combout\,
	ena => \v_blank_n~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => string_cnt(4));

-- Location: LCCOMB_X112_Y19_N26
\LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~0_combout\ = (!string_cnt(4) & ((!string_cnt(3)) # (!string_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => string_cnt(2),
	datac => string_cnt(3),
	datad => string_cnt(4),
	combout => \LessThan9~0_combout\);

-- Location: LCCOMB_X112_Y19_N28
\v_blank_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_blank_n~2_combout\ = (string_cnt(9) & ((!\LessThan9~0_combout\) # (!\v_blank_n~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => string_cnt(9),
	datac => \v_blank_n~0_combout\,
	datad => \LessThan9~0_combout\,
	combout => \v_blank_n~2_combout\);

-- Location: FF_X112_Y19_N3
\string_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \string_cnt[0]~10_combout\,
	sclr => \v_blank_n~2_combout\,
	ena => \v_blank_n~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => string_cnt(0));

-- Location: LCCOMB_X112_Y19_N4
\string_cnt[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \string_cnt[1]~12_combout\ = (string_cnt(1) & (!\string_cnt[0]~11\)) # (!string_cnt(1) & ((\string_cnt[0]~11\) # (GND)))
-- \string_cnt[1]~13\ = CARRY((!\string_cnt[0]~11\) # (!string_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => string_cnt(1),
	datad => VCC,
	cin => \string_cnt[0]~11\,
	combout => \string_cnt[1]~12_combout\,
	cout => \string_cnt[1]~13\);

-- Location: FF_X112_Y19_N5
\string_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \string_cnt[1]~12_combout\,
	sclr => \v_blank_n~2_combout\,
	ena => \v_blank_n~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => string_cnt(1));

-- Location: FF_X112_Y19_N9
\string_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \string_cnt[3]~16_combout\,
	sclr => \v_blank_n~2_combout\,
	ena => \v_blank_n~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => string_cnt(3));

-- Location: LCCOMB_X112_Y19_N24
\LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = (!string_cnt(2) & (!string_cnt(3) & !string_cnt(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => string_cnt(2),
	datac => string_cnt(3),
	datad => string_cnt(4),
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X111_Y19_N2
\LessThan8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan8~1_combout\ = (\LessThan8~0_combout\ & ((!string_cnt(0)) # (!string_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan8~0_combout\,
	datac => string_cnt(1),
	datad => string_cnt(0),
	combout => \LessThan8~1_combout\);

-- Location: LCCOMB_X112_Y19_N0
\v_blank_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_blank_n~1_combout\ = (!string_cnt(9) & (((string_cnt(1)) # (!\LessThan8~0_combout\)) # (!\v_blank_n~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v_blank_n~0_combout\,
	datab => string_cnt(9),
	datac => string_cnt(1),
	datad => \LessThan8~0_combout\,
	combout => \v_blank_n~1_combout\);

-- Location: LCCOMB_X112_Y19_N22
\LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (string_cnt(5) & (((string_cnt(0) & string_cnt(1))) # (!\LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => string_cnt(5),
	datab => string_cnt(0),
	datac => string_cnt(1),
	datad => \LessThan8~0_combout\,
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X111_Y19_N18
\LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = (!string_cnt(7) & (!string_cnt(8) & (!string_cnt(6) & !\LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => string_cnt(7),
	datab => string_cnt(8),
	datac => string_cnt(6),
	datad => \LessThan7~0_combout\,
	combout => \LessThan7~1_combout\);

-- Location: LCCOMB_X111_Y19_N16
\v_blank_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_blank_n~3_combout\ = (\v_blank_n~q\ & ((\v_blank_n~2_combout\) # ((\v_blank_n~1_combout\)))) # (!\v_blank_n~q\ & (((\v_blank_n~1_combout\ & !\LessThan7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v_blank_n~q\,
	datab => \v_blank_n~2_combout\,
	datac => \v_blank_n~1_combout\,
	datad => \LessThan7~1_combout\,
	combout => \v_blank_n~3_combout\);

-- Location: LCCOMB_X111_Y19_N12
\v_blank_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \v_blank_n~4_combout\ = (\v_blank_n~3_combout\) # ((\v_blank_n~0_combout\ & (\LessThan8~1_combout\ & string_cnt(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v_blank_n~0_combout\,
	datab => \LessThan8~1_combout\,
	datac => string_cnt(9),
	datad => \v_blank_n~3_combout\,
	combout => \v_blank_n~4_combout\);

-- Location: FF_X111_Y19_N13
v_blank_n : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \v_blank_n~4_combout\,
	ena => \v_blank_n~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v_blank_n~q\);

-- Location: LCCOMB_X111_Y19_N6
\vga_blank_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_blank_n~0_combout\ = (\h_blank_n~q\ & \v_blank_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \h_blank_n~q\,
	datad => \v_blank_n~q\,
	combout => \vga_blank_n~0_combout\);

-- Location: IOIBUF_X0_Y35_N1
\CLK_I~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_I,
	o => \CLK_I~input_o\);

-- Location: LCCOMB_X1_Y35_N22
\CLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK~0_combout\ = !\CLK~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK~q\,
	combout => \CLK~0_combout\);

-- Location: LCCOMB_X1_Y35_N8
\CLK~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK~feeder_combout\ = \CLK~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLK~0_combout\,
	combout => \CLK~feeder_combout\);

-- Location: FF_X1_Y35_N9
CLK : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_I~input_o\,
	d => \CLK~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK~q\);

-- Location: CLKCTRL_G1
\CLK~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: LCCOMB_X109_Y19_N22
\hsync~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hsync~2_combout\ = (!\LessThan0~2_combout\ & ((\hsync~reg0_q\) # ((!cnt(9) & \LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => cnt(9),
	datac => \hsync~reg0_q\,
	datad => \LessThan1~1_combout\,
	combout => \hsync~2_combout\);

-- Location: FF_X109_Y19_N23
\hsync~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \hsync~2_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync~reg0_q\);

-- Location: LCCOMB_X111_Y19_N0
\vsync~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vsync~1_combout\ = (\vsync~0_combout\ & ((\vsync~reg0_q\) # ((\v_blank_n~1_combout\ & \LessThan7~1_combout\)))) # (!\vsync~0_combout\ & (\v_blank_n~1_combout\ & ((\LessThan7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vsync~0_combout\,
	datab => \v_blank_n~1_combout\,
	datac => \vsync~reg0_q\,
	datad => \LessThan7~1_combout\,
	combout => \vsync~1_combout\);

-- Location: FF_X111_Y19_N1
\vsync~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \vsync~1_combout\,
	ena => \v_blank_n~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync~reg0_q\);

-- Location: LCCOMB_X111_Y19_N4
\Bl~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bl~1_combout\ = (!cnt(3) & (!cnt(8) & ((!cnt(2)) # (!cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datab => cnt(1),
	datac => cnt(8),
	datad => cnt(2),
	combout => \Bl~1_combout\);

-- Location: LCCOMB_X109_Y19_N20
\R~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~0_combout\ = (\LessThan2~1_combout\) # ((cnt(9) & ((!\Bl~1_combout\) # (!\LessThan4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => cnt(9),
	datac => \LessThan4~1_combout\,
	datad => \Bl~1_combout\,
	combout => \R~0_combout\);

-- Location: LCCOMB_X109_Y19_N28
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (((!cnt(3)) # (!cnt(2))) # (!cnt(0))) # (!cnt(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => cnt(0),
	datac => cnt(2),
	datad => cnt(3),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X109_Y19_N10
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ((!cnt(5) & ((\LessThan0~0_combout\) # (!cnt(4))))) # (!cnt(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	datab => cnt(6),
	datac => cnt(5),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X109_Y19_N8
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!cnt(7) & (!cnt(9) & (!cnt(8) & \LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(7),
	datab => cnt(9),
	datac => cnt(8),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X109_Y19_N6
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!cnt(9) & \LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(9),
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X109_Y19_N14
\R[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[1]~1_combout\ = (!\Bl[2]~0_combout\ & (!\RST~input_o\ & (!\LessThan0~2_combout\ & !\LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bl[2]~0_combout\,
	datab => \RST~input_o\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan1~2_combout\,
	combout => \R[1]~1_combout\);

-- Location: FF_X109_Y19_N21
\R[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \R~0_combout\,
	ena => \R[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R[1]~reg0_q\);

-- Location: LCCOMB_X109_Y19_N24
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (cnt(2)) # ((cnt(3)) # ((cnt(0) & cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => cnt(2),
	datac => cnt(1),
	datad => cnt(3),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X109_Y19_N26
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (!cnt(9) & (((\LessThan4~1_combout\ & !\LessThan2~0_combout\)) # (!cnt(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(8),
	datab => cnt(9),
	datac => \LessThan4~1_combout\,
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: FF_X109_Y19_N27
\G[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \LessThan2~1_combout\,
	ena => \R[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G[1]~reg0_q\);

-- Location: LCCOMB_X109_Y19_N12
\Bl~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bl~2_combout\ = ((\LessThan4~1_combout\ & \Bl~1_combout\)) # (!cnt(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(9),
	datac => \LessThan4~1_combout\,
	datad => \Bl~1_combout\,
	combout => \Bl~2_combout\);

-- Location: FF_X109_Y19_N13
\Bl[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	d => \Bl~2_combout\,
	ena => \R[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bl[0]~reg0_q\);

ww_vga_blank_n <= \vga_blank_n~output_o\;

ww_vga_sync_n <= \vga_sync_n~output_o\;

ww_VGA_CLK <= \VGA_CLK~output_o\;

ww_hsync <= \hsync~output_o\;

ww_vsync <= \vsync~output_o\;

ww_R(0) <= \R[0]~output_o\;

ww_R(1) <= \R[1]~output_o\;

ww_R(2) <= \R[2]~output_o\;

ww_R(3) <= \R[3]~output_o\;

ww_R(4) <= \R[4]~output_o\;

ww_R(5) <= \R[5]~output_o\;

ww_R(6) <= \R[6]~output_o\;

ww_R(7) <= \R[7]~output_o\;

ww_G(0) <= \G[0]~output_o\;

ww_G(1) <= \G[1]~output_o\;

ww_G(2) <= \G[2]~output_o\;

ww_G(3) <= \G[3]~output_o\;

ww_G(4) <= \G[4]~output_o\;

ww_G(5) <= \G[5]~output_o\;

ww_G(6) <= \G[6]~output_o\;

ww_G(7) <= \G[7]~output_o\;

ww_Bl(0) <= \Bl[0]~output_o\;

ww_Bl(1) <= \Bl[1]~output_o\;

ww_Bl(2) <= \Bl[2]~output_o\;

ww_Bl(3) <= \Bl[3]~output_o\;

ww_Bl(4) <= \Bl[4]~output_o\;

ww_Bl(5) <= \Bl[5]~output_o\;

ww_Bl(6) <= \Bl[6]~output_o\;

ww_Bl(7) <= \Bl[7]~output_o\;
END structure;


