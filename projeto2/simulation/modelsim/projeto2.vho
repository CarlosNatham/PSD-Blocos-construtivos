-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "11/10/2020 20:56:16"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	projeto2 IS
    PORT (
	i_A : IN std_logic_vector(7 DOWNTO 0);
	i_B : IN std_logic_vector(7 DOWNTO 0);
	i_X : IN std_logic;
	i_Y : IN std_logic;
	i_Z : IN std_logic;
	i_EN : IN std_logic;
	i_CLK : IN std_logic;
	i_CLR : IN std_logic;
	o_LED : OUT std_logic_vector(7 DOWNTO 0)
	);
END projeto2;

-- Design Ports Information
-- o_LED[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LED[1]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LED[2]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LED[3]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LED[4]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LED[5]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LED[6]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LED[7]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[0]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_X	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Y	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Z	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[0]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLR	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_EN	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[1]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[1]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[2]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[2]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[3]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[3]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[4]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[4]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[5]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[5]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[6]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[6]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[7]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[7]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF projeto2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_X : std_logic;
SIGNAL ww_i_Y : std_logic;
SIGNAL ww_i_Z : std_logic;
SIGNAL ww_i_EN : std_logic;
SIGNAL ww_i_CLK : std_logic;
SIGNAL ww_i_CLR : std_logic;
SIGNAL ww_o_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \i_Y~input_o\ : std_logic;
SIGNAL \i_X~input_o\ : std_logic;
SIGNAL \i_Z~input_o\ : std_logic;
SIGNAL \i_A[0]~input_o\ : std_logic;
SIGNAL \i_B[0]~input_o\ : std_logic;
SIGNAL \Add0~34_cout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \u_1|o_Q1[0]~feeder_combout\ : std_logic;
SIGNAL \u_0|o_Q0[0]~7_combout\ : std_logic;
SIGNAL \i_CLR~input_o\ : std_logic;
SIGNAL \u_1|o_Q1[0]~0_combout\ : std_logic;
SIGNAL \i_EN~input_o\ : std_logic;
SIGNAL \i_B[1]~input_o\ : std_logic;
SIGNAL \i_A[1]~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \u_1|o_Q1[1]~feeder_combout\ : std_logic;
SIGNAL \u_0|o_Q0[1]~6_combout\ : std_logic;
SIGNAL \i_A[2]~input_o\ : std_logic;
SIGNAL \i_B[2]~input_o\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \u_1|o_Q1[2]~feeder_combout\ : std_logic;
SIGNAL \u_0|o_Q0[2]~5_combout\ : std_logic;
SIGNAL \i_B[3]~input_o\ : std_logic;
SIGNAL \i_A[3]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \u_1|o_Q1[3]~feeder_combout\ : std_logic;
SIGNAL \u_0|o_Q0[3]~4_combout\ : std_logic;
SIGNAL \i_B[4]~input_o\ : std_logic;
SIGNAL \i_A[4]~input_o\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \u_1|o_Q1[4]~feeder_combout\ : std_logic;
SIGNAL \u_0|o_Q0[4]~3_combout\ : std_logic;
SIGNAL \i_B[5]~input_o\ : std_logic;
SIGNAL \i_A[5]~input_o\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \u_1|o_Q1[5]~feeder_combout\ : std_logic;
SIGNAL \u_0|o_Q0[5]~2_combout\ : std_logic;
SIGNAL \i_A[6]~input_o\ : std_logic;
SIGNAL \i_B[6]~input_o\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \u_1|o_Q1[6]~feeder_combout\ : std_logic;
SIGNAL \u_0|o_Q0[6]~1_combout\ : std_logic;
SIGNAL \i_A[7]~input_o\ : std_logic;
SIGNAL \i_B[7]~input_o\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \u_1|o_Q1[7]~feeder_combout\ : std_logic;
SIGNAL \u_0|o_Q0[7]~0_combout\ : std_logic;
SIGNAL \u_1|o_Q1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_i_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_CLR~input_o\ : std_logic;
SIGNAL \ALT_INV_i_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_Z~input_o\ : std_logic;
SIGNAL \ALT_INV_i_Y~input_o\ : std_logic;
SIGNAL \ALT_INV_i_X~input_o\ : std_logic;
SIGNAL \ALT_INV_i_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_i_A <= i_A;
ww_i_B <= i_B;
ww_i_X <= i_X;
ww_i_Y <= i_Y;
ww_i_Z <= i_Z;
ww_i_EN <= i_EN;
ww_i_CLK <= i_CLK;
ww_i_CLR <= i_CLR;
o_LED <= ww_o_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_i_B[7]~input_o\ <= NOT \i_B[7]~input_o\;
\ALT_INV_i_A[7]~input_o\ <= NOT \i_A[7]~input_o\;
\ALT_INV_i_B[6]~input_o\ <= NOT \i_B[6]~input_o\;
\ALT_INV_i_A[6]~input_o\ <= NOT \i_A[6]~input_o\;
\ALT_INV_i_B[5]~input_o\ <= NOT \i_B[5]~input_o\;
\ALT_INV_i_A[5]~input_o\ <= NOT \i_A[5]~input_o\;
\ALT_INV_i_B[4]~input_o\ <= NOT \i_B[4]~input_o\;
\ALT_INV_i_A[4]~input_o\ <= NOT \i_A[4]~input_o\;
\ALT_INV_i_B[3]~input_o\ <= NOT \i_B[3]~input_o\;
\ALT_INV_i_A[3]~input_o\ <= NOT \i_A[3]~input_o\;
\ALT_INV_i_B[2]~input_o\ <= NOT \i_B[2]~input_o\;
\ALT_INV_i_A[2]~input_o\ <= NOT \i_A[2]~input_o\;
\ALT_INV_i_B[1]~input_o\ <= NOT \i_B[1]~input_o\;
\ALT_INV_i_A[1]~input_o\ <= NOT \i_A[1]~input_o\;
\ALT_INV_i_CLR~input_o\ <= NOT \i_CLR~input_o\;
\ALT_INV_i_B[0]~input_o\ <= NOT \i_B[0]~input_o\;
\ALT_INV_i_Z~input_o\ <= NOT \i_Z~input_o\;
\ALT_INV_i_Y~input_o\ <= NOT \i_Y~input_o\;
\ALT_INV_i_X~input_o\ <= NOT \i_X~input_o\;
\ALT_INV_i_A[0]~input_o\ <= NOT \i_A[0]~input_o\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;

-- Location: IOOBUF_X89_Y11_N45
\o_LED[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_1|o_Q1\(0),
	devoe => ww_devoe,
	o => ww_o_LED(0));

-- Location: IOOBUF_X89_Y15_N22
\o_LED[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_1|o_Q1\(1),
	devoe => ww_devoe,
	o => ww_o_LED(1));

-- Location: IOOBUF_X89_Y23_N22
\o_LED[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_1|o_Q1\(2),
	devoe => ww_devoe,
	o => ww_o_LED(2));

-- Location: IOOBUF_X89_Y13_N56
\o_LED[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_1|o_Q1\(3),
	devoe => ww_devoe,
	o => ww_o_LED(3));

-- Location: IOOBUF_X89_Y15_N56
\o_LED[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_1|o_Q1\(4),
	devoe => ww_devoe,
	o => ww_o_LED(4));

-- Location: IOOBUF_X89_Y13_N22
\o_LED[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_1|o_Q1\(5),
	devoe => ww_devoe,
	o => ww_o_LED(5));

-- Location: IOOBUF_X89_Y15_N5
\o_LED[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_1|o_Q1\(6),
	devoe => ww_devoe,
	o => ww_o_LED(6));

-- Location: IOOBUF_X89_Y4_N79
\o_LED[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_1|o_Q1\(7),
	devoe => ww_devoe,
	o => ww_o_LED(7));

-- Location: IOIBUF_X89_Y25_N21
\i_CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLK,
	o => \i_CLK~input_o\);

-- Location: CLKCTRL_G10
\i_CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \i_CLK~input_o\,
	outclk => \i_CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y21_N38
\i_Y~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Y,
	o => \i_Y~input_o\);

-- Location: IOIBUF_X89_Y13_N4
\i_X~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_X,
	o => \i_X~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\i_Z~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Z,
	o => \i_Z~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\i_A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(0),
	o => \i_A[0]~input_o\);

-- Location: IOIBUF_X89_Y16_N55
\i_B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(0),
	o => \i_B[0]~input_o\);

-- Location: LABCELL_X88_Y19_N30
\Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~34_cout\ = CARRY(( (!\i_Y~input_o\ & (!\i_X~input_o\ & \i_Z~input_o\)) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_Y~input_o\,
	datab => \ALT_INV_i_X~input_o\,
	datad => \ALT_INV_i_Z~input_o\,
	cin => GND,
	cout => \Add0~34_cout\);

-- Location: LABCELL_X88_Y19_N33
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \i_A[0]~input_o\ ) + ( ((!\i_Z~input_o\ $ (!\i_B[0]~input_o\)) # (\i_X~input_o\)) # (\i_Y~input_o\) ) + ( \Add0~34_cout\ ))
-- \Add0~2\ = CARRY(( \i_A[0]~input_o\ ) + ( ((!\i_Z~input_o\ $ (!\i_B[0]~input_o\)) # (\i_X~input_o\)) # (\i_Y~input_o\) ) + ( \Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_Y~input_o\,
	datab => \ALT_INV_i_X~input_o\,
	datac => \ALT_INV_i_Z~input_o\,
	datad => \ALT_INV_i_A[0]~input_o\,
	dataf => \ALT_INV_i_B[0]~input_o\,
	cin => \Add0~34_cout\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: MLABCELL_X87_Y19_N3
\u_1|o_Q1[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_Q1[0]~feeder_combout\ = ( \Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \u_1|o_Q1[0]~feeder_combout\);

-- Location: MLABCELL_X87_Y19_N0
\u_0|o_Q0[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|o_Q0[0]~7_combout\ = ( \i_Z~input_o\ & ( (!\i_A[0]~input_o\ & ((!\i_X~input_o\ & ((!\i_Y~input_o\))) # (\i_X~input_o\ & ((\i_Y~input_o\) # (\i_B[0]~input_o\))))) # (\i_A[0]~input_o\ & ((!\i_X~input_o\ $ (!\i_Y~input_o\)))) ) ) # ( !\i_Z~input_o\ & ( 
-- (!\i_A[0]~input_o\ & ((!\i_X~input_o\) # ((\i_B[0]~input_o\ & \i_Y~input_o\)))) # (\i_A[0]~input_o\ & (\i_X~input_o\ & (!\i_B[0]~input_o\ $ (!\i_Y~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000111000110110000011100011011000111001111001100011100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_B[0]~input_o\,
	datab => \ALT_INV_i_A[0]~input_o\,
	datac => \ALT_INV_i_X~input_o\,
	datad => \ALT_INV_i_Y~input_o\,
	dataf => \ALT_INV_i_Z~input_o\,
	combout => \u_0|o_Q0[0]~7_combout\);

-- Location: IOIBUF_X89_Y23_N4
\i_CLR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLR,
	o => \i_CLR~input_o\);

-- Location: MLABCELL_X87_Y19_N21
\u_1|o_Q1[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_Q1[0]~0_combout\ = ( \i_Y~input_o\ & ( (\i_Z~input_o\) # (\i_X~input_o\) ) ) # ( !\i_Y~input_o\ & ( \i_X~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101011111111101010101010101010101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_X~input_o\,
	datad => \ALT_INV_i_Z~input_o\,
	datae => \ALT_INV_i_Y~input_o\,
	combout => \u_1|o_Q1[0]~0_combout\);

-- Location: IOIBUF_X89_Y15_N38
\i_EN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_EN,
	o => \i_EN~input_o\);

-- Location: FF_X87_Y19_N4
\u_1|o_Q1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|o_Q1[0]~feeder_combout\,
	asdata => \u_0|o_Q0[0]~7_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => \u_1|o_Q1[0]~0_combout\,
	ena => \i_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|o_Q1\(0));

-- Location: IOIBUF_X89_Y16_N4
\i_B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(1),
	o => \i_B[1]~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\i_A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(1),
	o => \i_A[1]~input_o\);

-- Location: LABCELL_X88_Y19_N36
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( (!\i_Y~input_o\ & (!\i_X~input_o\ & (!\i_Z~input_o\ $ (!\i_B[1]~input_o\)))) ) + ( \i_A[1]~input_o\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( (!\i_Y~input_o\ & (!\i_X~input_o\ & (!\i_Z~input_o\ $ (!\i_B[1]~input_o\)))) ) + ( \i_A[1]~input_o\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_Y~input_o\,
	datab => \ALT_INV_i_X~input_o\,
	datac => \ALT_INV_i_Z~input_o\,
	datad => \ALT_INV_i_B[1]~input_o\,
	dataf => \ALT_INV_i_A[1]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: MLABCELL_X87_Y19_N6
\u_1|o_Q1[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_Q1[1]~feeder_combout\ = ( \Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \u_1|o_Q1[1]~feeder_combout\);

-- Location: MLABCELL_X87_Y19_N9
\u_0|o_Q0[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|o_Q0[1]~6_combout\ = ( \i_Z~input_o\ & ( (!\i_Y~input_o\ & ((!\i_X~input_o\ & (!\i_A[1]~input_o\)) # (\i_X~input_o\ & ((\i_B[1]~input_o\) # (\i_A[1]~input_o\))))) # (\i_Y~input_o\ & (!\i_X~input_o\ $ ((!\i_A[1]~input_o\)))) ) ) # ( !\i_Z~input_o\ & ( 
-- (!\i_X~input_o\ & (((!\i_A[1]~input_o\)))) # (\i_X~input_o\ & ((!\i_Y~input_o\ & (\i_A[1]~input_o\ & \i_B[1]~input_o\)) # (\i_Y~input_o\ & (!\i_A[1]~input_o\ $ (!\i_B[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000111010010110000011101001010010110101101101001011010110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_Y~input_o\,
	datab => \ALT_INV_i_X~input_o\,
	datac => \ALT_INV_i_A[1]~input_o\,
	datad => \ALT_INV_i_B[1]~input_o\,
	dataf => \ALT_INV_i_Z~input_o\,
	combout => \u_0|o_Q0[1]~6_combout\);

-- Location: FF_X87_Y19_N8
\u_1|o_Q1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|o_Q1[1]~feeder_combout\,
	asdata => \u_0|o_Q0[1]~6_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => \u_1|o_Q1[0]~0_combout\,
	ena => \i_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|o_Q1\(1));

-- Location: IOIBUF_X89_Y21_N21
\i_A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(2),
	o => \i_A[2]~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\i_B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(2),
	o => \i_B[2]~input_o\);

-- Location: LABCELL_X88_Y19_N39
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \i_A[2]~input_o\ ) + ( (!\i_Y~input_o\ & (!\i_X~input_o\ & (!\i_Z~input_o\ $ (!\i_B[2]~input_o\)))) ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \i_A[2]~input_o\ ) + ( (!\i_Y~input_o\ & (!\i_X~input_o\ & (!\i_Z~input_o\ $ (!\i_B[2]~input_o\)))) ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101110111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_Y~input_o\,
	datab => \ALT_INV_i_X~input_o\,
	datac => \ALT_INV_i_Z~input_o\,
	datad => \ALT_INV_i_A[2]~input_o\,
	dataf => \ALT_INV_i_B[2]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: MLABCELL_X87_Y19_N42
\u_1|o_Q1[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_Q1[2]~feeder_combout\ = ( \Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~9_sumout\,
	combout => \u_1|o_Q1[2]~feeder_combout\);

-- Location: MLABCELL_X87_Y19_N45
\u_0|o_Q0[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|o_Q0[2]~5_combout\ = ( \i_X~input_o\ & ( (!\i_A[2]~input_o\ & ((!\i_Z~input_o\ & (\i_B[2]~input_o\ & \i_Y~input_o\)) # (\i_Z~input_o\ & ((\i_Y~input_o\) # (\i_B[2]~input_o\))))) # (\i_A[2]~input_o\ & (!\i_Y~input_o\ $ (((!\i_Z~input_o\ & 
-- !\i_B[2]~input_o\))))) ) ) # ( !\i_X~input_o\ & ( !\i_A[2]~input_o\ $ (((\i_Z~input_o\ & \i_Y~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010011001110011001001100100010111011011000001011101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_Z~input_o\,
	datab => \ALT_INV_i_A[2]~input_o\,
	datac => \ALT_INV_i_B[2]~input_o\,
	datad => \ALT_INV_i_Y~input_o\,
	dataf => \ALT_INV_i_X~input_o\,
	combout => \u_0|o_Q0[2]~5_combout\);

-- Location: FF_X87_Y19_N43
\u_1|o_Q1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|o_Q1[2]~feeder_combout\,
	asdata => \u_0|o_Q0[2]~5_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => \u_1|o_Q1[0]~0_combout\,
	ena => \i_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|o_Q1\(2));

-- Location: IOIBUF_X89_Y13_N38
\i_B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(3),
	o => \i_B[3]~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\i_A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(3),
	o => \i_A[3]~input_o\);

-- Location: LABCELL_X88_Y19_N42
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( (!\i_Y~input_o\ & (!\i_X~input_o\ & (!\i_Z~input_o\ $ (!\i_B[3]~input_o\)))) ) + ( \i_A[3]~input_o\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( (!\i_Y~input_o\ & (!\i_X~input_o\ & (!\i_Z~input_o\ $ (!\i_B[3]~input_o\)))) ) + ( \i_A[3]~input_o\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_Y~input_o\,
	datab => \ALT_INV_i_X~input_o\,
	datac => \ALT_INV_i_Z~input_o\,
	datad => \ALT_INV_i_B[3]~input_o\,
	dataf => \ALT_INV_i_A[3]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: MLABCELL_X87_Y19_N48
\u_1|o_Q1[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_Q1[3]~feeder_combout\ = \Add0~13_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~13_sumout\,
	combout => \u_1|o_Q1[3]~feeder_combout\);

-- Location: MLABCELL_X87_Y19_N27
\u_0|o_Q0[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|o_Q0[3]~4_combout\ = ( \i_Y~input_o\ & ( \i_A[3]~input_o\ & ( (!\i_X~input_o\ & ((\i_Z~input_o\))) # (\i_X~input_o\ & (!\i_B[3]~input_o\ & !\i_Z~input_o\)) ) ) ) # ( !\i_Y~input_o\ & ( \i_A[3]~input_o\ & ( (\i_X~input_o\ & ((\i_Z~input_o\) # 
-- (\i_B[3]~input_o\))) ) ) ) # ( \i_Y~input_o\ & ( !\i_A[3]~input_o\ & ( (!\i_X~input_o\ & ((!\i_Z~input_o\))) # (\i_X~input_o\ & ((\i_Z~input_o\) # (\i_B[3]~input_o\))) ) ) ) # ( !\i_Y~input_o\ & ( !\i_A[3]~input_o\ & ( (!\i_X~input_o\) # 
-- ((\i_B[3]~input_o\ & \i_Z~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101111101011110101010100000101010101010101000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_X~input_o\,
	datac => \ALT_INV_i_B[3]~input_o\,
	datad => \ALT_INV_i_Z~input_o\,
	datae => \ALT_INV_i_Y~input_o\,
	dataf => \ALT_INV_i_A[3]~input_o\,
	combout => \u_0|o_Q0[3]~4_combout\);

-- Location: FF_X87_Y19_N49
\u_1|o_Q1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|o_Q1[3]~feeder_combout\,
	asdata => \u_0|o_Q0[3]~4_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => \u_1|o_Q1[0]~0_combout\,
	ena => \i_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|o_Q1\(3));

-- Location: IOIBUF_X89_Y20_N78
\i_B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(4),
	o => \i_B[4]~input_o\);

-- Location: IOIBUF_X89_Y21_N55
\i_A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(4),
	o => \i_A[4]~input_o\);

-- Location: LABCELL_X88_Y19_N45
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( (!\i_Y~input_o\ & (!\i_X~input_o\ & (!\i_Z~input_o\ $ (!\i_B[4]~input_o\)))) ) + ( \i_A[4]~input_o\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( (!\i_Y~input_o\ & (!\i_X~input_o\ & (!\i_Z~input_o\ $ (!\i_B[4]~input_o\)))) ) + ( \i_A[4]~input_o\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_Y~input_o\,
	datab => \ALT_INV_i_X~input_o\,
	datac => \ALT_INV_i_Z~input_o\,
	datad => \ALT_INV_i_B[4]~input_o\,
	dataf => \ALT_INV_i_A[4]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: MLABCELL_X87_Y19_N54
\u_1|o_Q1[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_Q1[4]~feeder_combout\ = ( \Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \u_1|o_Q1[4]~feeder_combout\);

-- Location: MLABCELL_X87_Y19_N57
\u_0|o_Q0[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|o_Q0[4]~3_combout\ = ( \i_Z~input_o\ & ( (!\i_Y~input_o\ & ((!\i_X~input_o\ & (!\i_A[4]~input_o\)) # (\i_X~input_o\ & ((\i_B[4]~input_o\) # (\i_A[4]~input_o\))))) # (\i_Y~input_o\ & (!\i_X~input_o\ $ ((!\i_A[4]~input_o\)))) ) ) # ( !\i_Z~input_o\ & ( 
-- (!\i_X~input_o\ & (((!\i_A[4]~input_o\)))) # (\i_X~input_o\ & ((!\i_Y~input_o\ & (\i_A[4]~input_o\ & \i_B[4]~input_o\)) # (\i_Y~input_o\ & (!\i_A[4]~input_o\ $ (!\i_B[4]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000111010010110000011101001010010110101101101001011010110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_Y~input_o\,
	datab => \ALT_INV_i_X~input_o\,
	datac => \ALT_INV_i_A[4]~input_o\,
	datad => \ALT_INV_i_B[4]~input_o\,
	dataf => \ALT_INV_i_Z~input_o\,
	combout => \u_0|o_Q0[4]~3_combout\);

-- Location: FF_X87_Y19_N55
\u_1|o_Q1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|o_Q1[4]~feeder_combout\,
	asdata => \u_0|o_Q0[4]~3_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => \u_1|o_Q1[0]~0_combout\,
	ena => \i_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|o_Q1\(4));

-- Location: IOIBUF_X89_Y16_N21
\i_B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(5),
	o => \i_B[5]~input_o\);

-- Location: IOIBUF_X89_Y16_N38
\i_A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(5),
	o => \i_A[5]~input_o\);

-- Location: LABCELL_X88_Y19_N48
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( (!\i_Y~input_o\ & (!\i_X~input_o\ & (!\i_Z~input_o\ $ (!\i_B[5]~input_o\)))) ) + ( \i_A[5]~input_o\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( (!\i_Y~input_o\ & (!\i_X~input_o\ & (!\i_Z~input_o\ $ (!\i_B[5]~input_o\)))) ) + ( \i_A[5]~input_o\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_Y~input_o\,
	datab => \ALT_INV_i_X~input_o\,
	datac => \ALT_INV_i_Z~input_o\,
	datad => \ALT_INV_i_B[5]~input_o\,
	dataf => \ALT_INV_i_A[5]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: MLABCELL_X87_Y19_N30
\u_1|o_Q1[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_Q1[5]~feeder_combout\ = ( \Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~21_sumout\,
	combout => \u_1|o_Q1[5]~feeder_combout\);

-- Location: MLABCELL_X87_Y19_N33
\u_0|o_Q0[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|o_Q0[5]~2_combout\ = ( \i_Z~input_o\ & ( (!\i_A[5]~input_o\ & ((!\i_X~input_o\ & ((!\i_Y~input_o\))) # (\i_X~input_o\ & ((\i_Y~input_o\) # (\i_B[5]~input_o\))))) # (\i_A[5]~input_o\ & (!\i_X~input_o\ $ (((!\i_Y~input_o\))))) ) ) # ( !\i_Z~input_o\ & 
-- ( (!\i_A[5]~input_o\ & ((!\i_X~input_o\) # ((\i_B[5]~input_o\ & \i_Y~input_o\)))) # (\i_A[5]~input_o\ & (\i_X~input_o\ & (!\i_B[5]~input_o\ $ (!\i_Y~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100110011010100010011001101010011011011001101001101101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_A[5]~input_o\,
	datab => \ALT_INV_i_X~input_o\,
	datac => \ALT_INV_i_B[5]~input_o\,
	datad => \ALT_INV_i_Y~input_o\,
	dataf => \ALT_INV_i_Z~input_o\,
	combout => \u_0|o_Q0[5]~2_combout\);

-- Location: FF_X87_Y19_N31
\u_1|o_Q1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|o_Q1[5]~feeder_combout\,
	asdata => \u_0|o_Q0[5]~2_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => \u_1|o_Q1[0]~0_combout\,
	ena => \i_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|o_Q1\(5));

-- Location: IOIBUF_X89_Y21_N4
\i_A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(6),
	o => \i_A[6]~input_o\);

-- Location: IOIBUF_X89_Y25_N4
\i_B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(6),
	o => \i_B[6]~input_o\);

-- Location: LABCELL_X88_Y19_N51
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \i_A[6]~input_o\ ) + ( (!\i_Y~input_o\ & (!\i_X~input_o\ & (!\i_Z~input_o\ $ (!\i_B[6]~input_o\)))) ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \i_A[6]~input_o\ ) + ( (!\i_Y~input_o\ & (!\i_X~input_o\ & (!\i_Z~input_o\ $ (!\i_B[6]~input_o\)))) ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101110111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_Y~input_o\,
	datab => \ALT_INV_i_X~input_o\,
	datac => \ALT_INV_i_Z~input_o\,
	datad => \ALT_INV_i_A[6]~input_o\,
	dataf => \ALT_INV_i_B[6]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: MLABCELL_X87_Y19_N39
\u_1|o_Q1[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_Q1[6]~feeder_combout\ = ( \Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~25_sumout\,
	combout => \u_1|o_Q1[6]~feeder_combout\);

-- Location: MLABCELL_X87_Y19_N36
\u_0|o_Q0[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|o_Q0[6]~1_combout\ = ( \i_B[6]~input_o\ & ( (!\i_X~input_o\ & (!\i_A[6]~input_o\ $ (((\i_Z~input_o\ & \i_Y~input_o\))))) # (\i_X~input_o\ & ((!\i_A[6]~input_o\ & ((\i_Y~input_o\) # (\i_Z~input_o\))) # (\i_A[6]~input_o\ & ((!\i_Y~input_o\))))) ) ) # ( 
-- !\i_B[6]~input_o\ & ( (!\i_Z~input_o\ & ((!\i_A[6]~input_o\ & (!\i_X~input_o\)) # (\i_A[6]~input_o\ & (\i_X~input_o\ & \i_Y~input_o\)))) # (\i_Z~input_o\ & (!\i_A[6]~input_o\ $ (!\i_X~input_o\ $ (!\i_Y~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000110010110110000011001011011000111100111001100011110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_Z~input_o\,
	datab => \ALT_INV_i_A[6]~input_o\,
	datac => \ALT_INV_i_X~input_o\,
	datad => \ALT_INV_i_Y~input_o\,
	dataf => \ALT_INV_i_B[6]~input_o\,
	combout => \u_0|o_Q0[6]~1_combout\);

-- Location: FF_X87_Y19_N40
\u_1|o_Q1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|o_Q1[6]~feeder_combout\,
	asdata => \u_0|o_Q0[6]~1_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => \u_1|o_Q1[0]~0_combout\,
	ena => \i_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|o_Q1\(6));

-- Location: IOIBUF_X89_Y23_N55
\i_A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(7),
	o => \i_A[7]~input_o\);

-- Location: IOIBUF_X89_Y23_N38
\i_B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(7),
	o => \i_B[7]~input_o\);

-- Location: LABCELL_X88_Y19_N54
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \i_A[7]~input_o\ ) + ( (!\i_X~input_o\ & (!\i_Y~input_o\ & (!\i_Z~input_o\ $ (!\i_B[7]~input_o\)))) ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111110111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_Z~input_o\,
	datab => \ALT_INV_i_X~input_o\,
	datac => \ALT_INV_i_Y~input_o\,
	datad => \ALT_INV_i_A[7]~input_o\,
	dataf => \ALT_INV_i_B[7]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\);

-- Location: MLABCELL_X87_Y19_N15
\u_1|o_Q1[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_Q1[7]~feeder_combout\ = \Add0~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~29_sumout\,
	combout => \u_1|o_Q1[7]~feeder_combout\);

-- Location: MLABCELL_X87_Y19_N12
\u_0|o_Q0[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|o_Q0[7]~0_combout\ = ( \i_X~input_o\ & ( (!\i_A[7]~input_o\ & ((!\i_Z~input_o\ & (\i_B[7]~input_o\ & \i_Y~input_o\)) # (\i_Z~input_o\ & ((\i_Y~input_o\) # (\i_B[7]~input_o\))))) # (\i_A[7]~input_o\ & (!\i_Y~input_o\ $ (((!\i_Z~input_o\ & 
-- !\i_B[7]~input_o\))))) ) ) # ( !\i_X~input_o\ & ( !\i_A[7]~input_o\ $ (((\i_Z~input_o\ & \i_Y~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010011001110011001001100100010111011011000001011101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_Z~input_o\,
	datab => \ALT_INV_i_A[7]~input_o\,
	datac => \ALT_INV_i_B[7]~input_o\,
	datad => \ALT_INV_i_Y~input_o\,
	dataf => \ALT_INV_i_X~input_o\,
	combout => \u_0|o_Q0[7]~0_combout\);

-- Location: FF_X87_Y19_N17
\u_1|o_Q1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|o_Q1[7]~feeder_combout\,
	asdata => \u_0|o_Q0[7]~0_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => \u_1|o_Q1[0]~0_combout\,
	ena => \i_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|o_Q1\(7));

-- Location: LABCELL_X40_Y16_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


