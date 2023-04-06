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

-- DATE "11/10/2020 21:15:49"

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

ENTITY 	projeto3 IS
    PORT (
	i_WDATA : IN std_logic_vector(7 DOWNTO 0);
	i_WADDR0 : IN std_logic;
	i_WADDR1 : IN std_logic;
	i_WEN : IN std_logic;
	i_RADDR2 : IN std_logic;
	i_RADDR3 : IN std_logic;
	i_REN : IN std_logic;
	i_CLK : IN std_logic;
	i_CLR : IN std_logic;
	o_RDATA : OUT std_logic_vector(7 DOWNTO 0)
	);
END projeto3;

-- Design Ports Information
-- o_RDATA[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RDATA[1]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RDATA[2]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RDATA[3]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RDATA[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RDATA[5]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RDATA[6]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RDATA[7]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RADDR3	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RADDR2	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_REN	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_WDATA[0]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLR	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_WADDR1	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_WADDR0	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_WEN	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_WDATA[1]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_WDATA[2]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_WDATA[3]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_WDATA[4]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_WDATA[5]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_WDATA[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_WDATA[7]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF projeto3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_WDATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_WADDR0 : std_logic;
SIGNAL ww_i_WADDR1 : std_logic;
SIGNAL ww_i_WEN : std_logic;
SIGNAL ww_i_RADDR2 : std_logic;
SIGNAL ww_i_RADDR3 : std_logic;
SIGNAL ww_i_REN : std_logic;
SIGNAL ww_i_CLK : std_logic;
SIGNAL ww_i_CLR : std_logic;
SIGNAL ww_o_RDATA : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \i_REN~input_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \i_WDATA[0]~input_o\ : std_logic;
SIGNAL \i_CLR~input_o\ : std_logic;
SIGNAL \i_WADDR1~input_o\ : std_logic;
SIGNAL \i_WADDR0~input_o\ : std_logic;
SIGNAL \i_WEN~input_o\ : std_logic;
SIGNAL \u_0|o_D3~0_combout\ : std_logic;
SIGNAL \u_2|o_Q2[0]~feeder_combout\ : std_logic;
SIGNAL \u_0|o_D1~0_combout\ : std_logic;
SIGNAL \i_RADDR3~input_o\ : std_logic;
SIGNAL \i_RADDR2~input_o\ : std_logic;
SIGNAL \u_0|o_D2~0_combout\ : std_logic;
SIGNAL \u_1|o_Q1[0]~feeder_combout\ : std_logic;
SIGNAL \u_0|o_D0~0_combout\ : std_logic;
SIGNAL \u_6|o_I[0]~0_combout\ : std_logic;
SIGNAL \i_WDATA[1]~input_o\ : std_logic;
SIGNAL \u_2|o_Q2[1]~feeder_combout\ : std_logic;
SIGNAL \u_1|o_Q1[1]~feeder_combout\ : std_logic;
SIGNAL \u_6|o_I[1]~1_combout\ : std_logic;
SIGNAL \i_WDATA[2]~input_o\ : std_logic;
SIGNAL \u_2|o_Q2[2]~feeder_combout\ : std_logic;
SIGNAL \u_6|o_I[2]~2_combout\ : std_logic;
SIGNAL \i_WDATA[3]~input_o\ : std_logic;
SIGNAL \u_6|o_I[3]~3_combout\ : std_logic;
SIGNAL \i_WDATA[4]~input_o\ : std_logic;
SIGNAL \u_6|o_I[4]~4_combout\ : std_logic;
SIGNAL \i_WDATA[5]~input_o\ : std_logic;
SIGNAL \u_2|o_Q2[5]~feeder_combout\ : std_logic;
SIGNAL \u_3|o_Q3[5]~feeder_combout\ : std_logic;
SIGNAL \u_6|o_I[5]~5_combout\ : std_logic;
SIGNAL \i_WDATA[6]~input_o\ : std_logic;
SIGNAL \u_2|o_Q2[6]~feeder_combout\ : std_logic;
SIGNAL \u_3|o_Q3[6]~feeder_combout\ : std_logic;
SIGNAL \u_6|o_I[6]~6_combout\ : std_logic;
SIGNAL \i_WDATA[7]~input_o\ : std_logic;
SIGNAL \u_6|o_I[7]~7_combout\ : std_logic;
SIGNAL \u_3|o_Q3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_4|o_Q4\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_2|o_Q2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_1|o_Q1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_6|o_I\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_3|ALT_INV_o_Q3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_4|ALT_INV_o_Q4\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_6|ALT_INV_o_I[2]~2_combout\ : std_logic;
SIGNAL \u_2|ALT_INV_o_Q2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_1|ALT_INV_o_Q1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_6|ALT_INV_o_I[0]~0_combout\ : std_logic;
SIGNAL \u_6|ALT_INV_o_I[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_i_WDATA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_WDATA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_WDATA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_WDATA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_WEN~input_o\ : std_logic;
SIGNAL \ALT_INV_i_WADDR0~input_o\ : std_logic;
SIGNAL \ALT_INV_i_WADDR1~input_o\ : std_logic;
SIGNAL \ALT_INV_i_CLR~input_o\ : std_logic;
SIGNAL \ALT_INV_i_WDATA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_REN~input_o\ : std_logic;
SIGNAL \ALT_INV_i_RADDR2~input_o\ : std_logic;
SIGNAL \ALT_INV_i_RADDR3~input_o\ : std_logic;
SIGNAL \u_6|ALT_INV_o_I\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_6|ALT_INV_o_I[7]~7_combout\ : std_logic;
SIGNAL \u_6|ALT_INV_o_I[6]~6_combout\ : std_logic;
SIGNAL \u_6|ALT_INV_o_I[5]~5_combout\ : std_logic;
SIGNAL \u_6|ALT_INV_o_I[4]~4_combout\ : std_logic;
SIGNAL \u_6|ALT_INV_o_I[3]~3_combout\ : std_logic;

BEGIN

ww_i_WDATA <= i_WDATA;
ww_i_WADDR0 <= i_WADDR0;
ww_i_WADDR1 <= i_WADDR1;
ww_i_WEN <= i_WEN;
ww_i_RADDR2 <= i_RADDR2;
ww_i_RADDR3 <= i_RADDR3;
ww_i_REN <= i_REN;
ww_i_CLK <= i_CLK;
ww_i_CLR <= i_CLR;
o_RDATA <= ww_o_RDATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\u_3|ALT_INV_o_Q3\(0) <= NOT \u_3|o_Q3\(0);
\u_4|ALT_INV_o_Q4\(0) <= NOT \u_4|o_Q4\(0);
\u_6|ALT_INV_o_I[2]~2_combout\ <= NOT \u_6|o_I[2]~2_combout\;
\u_3|ALT_INV_o_Q3\(3) <= NOT \u_3|o_Q3\(3);
\u_2|ALT_INV_o_Q2\(0) <= NOT \u_2|o_Q2\(0);
\u_1|ALT_INV_o_Q1\(0) <= NOT \u_1|o_Q1\(0);
\u_6|ALT_INV_o_I[0]~0_combout\ <= NOT \u_6|o_I[0]~0_combout\;
\u_3|ALT_INV_o_Q3\(1) <= NOT \u_3|o_Q3\(1);
\u_4|ALT_INV_o_Q4\(1) <= NOT \u_4|o_Q4\(1);
\u_2|ALT_INV_o_Q2\(1) <= NOT \u_2|o_Q2\(1);
\u_1|ALT_INV_o_Q1\(1) <= NOT \u_1|o_Q1\(1);
\u_6|ALT_INV_o_I[1]~1_combout\ <= NOT \u_6|o_I[1]~1_combout\;
\u_3|ALT_INV_o_Q3\(2) <= NOT \u_3|o_Q3\(2);
\u_4|ALT_INV_o_Q4\(2) <= NOT \u_4|o_Q4\(2);
\u_2|ALT_INV_o_Q2\(2) <= NOT \u_2|o_Q2\(2);
\u_1|ALT_INV_o_Q1\(2) <= NOT \u_1|o_Q1\(2);
\u_4|ALT_INV_o_Q4\(3) <= NOT \u_4|o_Q4\(3);
\u_2|ALT_INV_o_Q2\(3) <= NOT \u_2|o_Q2\(3);
\ALT_INV_i_WDATA[6]~input_o\ <= NOT \i_WDATA[6]~input_o\;
\ALT_INV_i_WDATA[5]~input_o\ <= NOT \i_WDATA[5]~input_o\;
\ALT_INV_i_WDATA[2]~input_o\ <= NOT \i_WDATA[2]~input_o\;
\ALT_INV_i_WDATA[1]~input_o\ <= NOT \i_WDATA[1]~input_o\;
\ALT_INV_i_WEN~input_o\ <= NOT \i_WEN~input_o\;
\ALT_INV_i_WADDR0~input_o\ <= NOT \i_WADDR0~input_o\;
\ALT_INV_i_WADDR1~input_o\ <= NOT \i_WADDR1~input_o\;
\ALT_INV_i_CLR~input_o\ <= NOT \i_CLR~input_o\;
\ALT_INV_i_WDATA[0]~input_o\ <= NOT \i_WDATA[0]~input_o\;
\ALT_INV_i_REN~input_o\ <= NOT \i_REN~input_o\;
\ALT_INV_i_RADDR2~input_o\ <= NOT \i_RADDR2~input_o\;
\ALT_INV_i_RADDR3~input_o\ <= NOT \i_RADDR3~input_o\;
\u_6|ALT_INV_o_I\(7) <= NOT \u_6|o_I\(7);
\u_6|ALT_INV_o_I\(6) <= NOT \u_6|o_I\(6);
\u_6|ALT_INV_o_I\(5) <= NOT \u_6|o_I\(5);
\u_6|ALT_INV_o_I\(4) <= NOT \u_6|o_I\(4);
\u_6|ALT_INV_o_I\(3) <= NOT \u_6|o_I\(3);
\u_6|ALT_INV_o_I\(2) <= NOT \u_6|o_I\(2);
\u_6|ALT_INV_o_I\(1) <= NOT \u_6|o_I\(1);
\u_6|ALT_INV_o_I\(0) <= NOT \u_6|o_I\(0);
\u_6|ALT_INV_o_I[7]~7_combout\ <= NOT \u_6|o_I[7]~7_combout\;
\u_1|ALT_INV_o_Q1\(7) <= NOT \u_1|o_Q1\(7);
\u_2|ALT_INV_o_Q2\(7) <= NOT \u_2|o_Q2\(7);
\u_4|ALT_INV_o_Q4\(7) <= NOT \u_4|o_Q4\(7);
\u_3|ALT_INV_o_Q3\(7) <= NOT \u_3|o_Q3\(7);
\u_6|ALT_INV_o_I[6]~6_combout\ <= NOT \u_6|o_I[6]~6_combout\;
\u_1|ALT_INV_o_Q1\(6) <= NOT \u_1|o_Q1\(6);
\u_2|ALT_INV_o_Q2\(6) <= NOT \u_2|o_Q2\(6);
\u_4|ALT_INV_o_Q4\(6) <= NOT \u_4|o_Q4\(6);
\u_3|ALT_INV_o_Q3\(6) <= NOT \u_3|o_Q3\(6);
\u_6|ALT_INV_o_I[5]~5_combout\ <= NOT \u_6|o_I[5]~5_combout\;
\u_1|ALT_INV_o_Q1\(5) <= NOT \u_1|o_Q1\(5);
\u_2|ALT_INV_o_Q2\(5) <= NOT \u_2|o_Q2\(5);
\u_4|ALT_INV_o_Q4\(5) <= NOT \u_4|o_Q4\(5);
\u_3|ALT_INV_o_Q3\(5) <= NOT \u_3|o_Q3\(5);
\u_6|ALT_INV_o_I[4]~4_combout\ <= NOT \u_6|o_I[4]~4_combout\;
\u_1|ALT_INV_o_Q1\(4) <= NOT \u_1|o_Q1\(4);
\u_2|ALT_INV_o_Q2\(4) <= NOT \u_2|o_Q2\(4);
\u_4|ALT_INV_o_Q4\(4) <= NOT \u_4|o_Q4\(4);
\u_3|ALT_INV_o_Q3\(4) <= NOT \u_3|o_Q3\(4);
\u_6|ALT_INV_o_I[3]~3_combout\ <= NOT \u_6|o_I[3]~3_combout\;
\u_1|ALT_INV_o_Q1\(3) <= NOT \u_1|o_Q1\(3);

-- Location: IOOBUF_X89_Y21_N5
\o_RDATA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_6|o_I\(0),
	devoe => ww_devoe,
	o => ww_o_RDATA(0));

-- Location: IOOBUF_X89_Y13_N56
\o_RDATA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_6|o_I\(1),
	devoe => ww_devoe,
	o => ww_o_RDATA(1));

-- Location: IOOBUF_X89_Y16_N56
\o_RDATA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_6|o_I\(2),
	devoe => ww_devoe,
	o => ww_o_RDATA(2));

-- Location: IOOBUF_X89_Y20_N62
\o_RDATA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_6|o_I\(3),
	devoe => ww_devoe,
	o => ww_o_RDATA(3));

-- Location: IOOBUF_X89_Y15_N22
\o_RDATA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_6|o_I\(4),
	devoe => ww_devoe,
	o => ww_o_RDATA(4));

-- Location: IOOBUF_X89_Y20_N45
\o_RDATA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_6|o_I\(5),
	devoe => ww_devoe,
	o => ww_o_RDATA(5));

-- Location: IOOBUF_X89_Y15_N56
\o_RDATA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_6|o_I\(6),
	devoe => ww_devoe,
	o => ww_o_RDATA(6));

-- Location: IOOBUF_X89_Y20_N96
\o_RDATA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_6|o_I\(7),
	devoe => ww_devoe,
	o => ww_o_RDATA(7));

-- Location: IOIBUF_X89_Y25_N4
\i_REN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_REN,
	o => \i_REN~input_o\);

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

-- Location: IOIBUF_X89_Y21_N55
\i_WDATA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_WDATA(0),
	o => \i_WDATA[0]~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\i_CLR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLR,
	o => \i_CLR~input_o\);

-- Location: IOIBUF_X89_Y16_N38
\i_WADDR1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_WADDR1,
	o => \i_WADDR1~input_o\);

-- Location: IOIBUF_X89_Y16_N21
\i_WADDR0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_WADDR0,
	o => \i_WADDR0~input_o\);

-- Location: IOIBUF_X89_Y16_N4
\i_WEN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_WEN,
	o => \i_WEN~input_o\);

-- Location: MLABCELL_X84_Y28_N54
\u_0|o_D3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|o_D3~0_combout\ = ( \i_WEN~input_o\ & ( (\i_WADDR1~input_o\ & \i_WADDR0~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_WADDR1~input_o\,
	datac => \ALT_INV_i_WADDR0~input_o\,
	datae => \ALT_INV_i_WEN~input_o\,
	combout => \u_0|o_D3~0_combout\);

-- Location: FF_X83_Y28_N20
\u_4|o_Q4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_WDATA[0]~input_o\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => VCC,
	ena => \u_0|o_D3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_4|o_Q4\(0));

-- Location: MLABCELL_X82_Y28_N15
\u_2|o_Q2[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_2|o_Q2[0]~feeder_combout\ = ( \i_WDATA[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_i_WDATA[0]~input_o\,
	combout => \u_2|o_Q2[0]~feeder_combout\);

-- Location: MLABCELL_X84_Y28_N21
\u_0|o_D1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|o_D1~0_combout\ = ( \i_WADDR1~input_o\ & ( (!\i_WADDR0~input_o\ & \i_WEN~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_WADDR0~input_o\,
	datad => \ALT_INV_i_WEN~input_o\,
	dataf => \ALT_INV_i_WADDR1~input_o\,
	combout => \u_0|o_D1~0_combout\);

-- Location: FF_X82_Y28_N16
\u_2|o_Q2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_2|o_Q2[0]~feeder_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	ena => \u_0|o_D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_2|o_Q2\(0));

-- Location: IOIBUF_X89_Y23_N21
\i_RADDR3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RADDR3,
	o => \i_RADDR3~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\i_RADDR2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RADDR2,
	o => \i_RADDR2~input_o\);

-- Location: MLABCELL_X84_Y28_N9
\u_0|o_D2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|o_D2~0_combout\ = ( \i_WEN~input_o\ & ( (!\i_WADDR1~input_o\ & \i_WADDR0~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_WADDR1~input_o\,
	datad => \ALT_INV_i_WADDR0~input_o\,
	datae => \ALT_INV_i_WEN~input_o\,
	combout => \u_0|o_D2~0_combout\);

-- Location: FF_X83_Y28_N49
\u_3|o_Q3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_WDATA[0]~input_o\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => VCC,
	ena => \u_0|o_D2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_3|o_Q3\(0));

-- Location: MLABCELL_X82_Y28_N24
\u_1|o_Q1[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_Q1[0]~feeder_combout\ = ( \i_WDATA[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_i_WDATA[0]~input_o\,
	combout => \u_1|o_Q1[0]~feeder_combout\);

-- Location: MLABCELL_X84_Y28_N3
\u_0|o_D0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_0|o_D0~0_combout\ = ( !\i_WADDR1~input_o\ & ( (!\i_WADDR0~input_o\ & \i_WEN~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_WADDR0~input_o\,
	datad => \ALT_INV_i_WEN~input_o\,
	dataf => \ALT_INV_i_WADDR1~input_o\,
	combout => \u_0|o_D0~0_combout\);

-- Location: FF_X82_Y28_N26
\u_1|o_Q1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|o_Q1[0]~feeder_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	ena => \u_0|o_D0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|o_Q1\(0));

-- Location: LABCELL_X83_Y28_N21
\u_6|o_I[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_6|o_I[0]~0_combout\ = ( \u_3|o_Q3\(0) & ( \u_1|o_Q1\(0) & ( (!\i_RADDR3~input_o\) # ((!\i_RADDR2~input_o\ & ((\u_2|o_Q2\(0)))) # (\i_RADDR2~input_o\ & (\u_4|o_Q4\(0)))) ) ) ) # ( !\u_3|o_Q3\(0) & ( \u_1|o_Q1\(0) & ( (!\i_RADDR3~input_o\ & 
-- (((!\i_RADDR2~input_o\)))) # (\i_RADDR3~input_o\ & ((!\i_RADDR2~input_o\ & ((\u_2|o_Q2\(0)))) # (\i_RADDR2~input_o\ & (\u_4|o_Q4\(0))))) ) ) ) # ( \u_3|o_Q3\(0) & ( !\u_1|o_Q1\(0) & ( (!\i_RADDR3~input_o\ & (((\i_RADDR2~input_o\)))) # (\i_RADDR3~input_o\ 
-- & ((!\i_RADDR2~input_o\ & ((\u_2|o_Q2\(0)))) # (\i_RADDR2~input_o\ & (\u_4|o_Q4\(0))))) ) ) ) # ( !\u_3|o_Q3\(0) & ( !\u_1|o_Q1\(0) & ( (\i_RADDR3~input_o\ & ((!\i_RADDR2~input_o\ & ((\u_2|o_Q2\(0)))) # (\i_RADDR2~input_o\ & (\u_4|o_Q4\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000111111010111110011000001011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_4|ALT_INV_o_Q4\(0),
	datab => \u_2|ALT_INV_o_Q2\(0),
	datac => \ALT_INV_i_RADDR3~input_o\,
	datad => \ALT_INV_i_RADDR2~input_o\,
	datae => \u_3|ALT_INV_o_Q3\(0),
	dataf => \u_1|ALT_INV_o_Q1\(0),
	combout => \u_6|o_I[0]~0_combout\);

-- Location: LABCELL_X83_Y28_N33
\u_6|o_I[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_6|o_I\(0) = ( \i_REN~input_o\ & ( \u_6|o_I[0]~0_combout\ ) ) # ( !\i_REN~input_o\ & ( \u_6|o_I[0]~0_combout\ & ( \u_6|o_I\(0) ) ) ) # ( !\i_REN~input_o\ & ( !\u_6|o_I[0]~0_combout\ & ( \u_6|o_I\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_6|ALT_INV_o_I\(0),
	datae => \ALT_INV_i_REN~input_o\,
	dataf => \u_6|ALT_INV_o_I[0]~0_combout\,
	combout => \u_6|o_I\(0));

-- Location: IOIBUF_X89_Y15_N4
\i_WDATA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_WDATA(1),
	o => \i_WDATA[1]~input_o\);

-- Location: FF_X83_Y28_N2
\u_3|o_Q3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_WDATA[1]~input_o\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => VCC,
	ena => \u_0|o_D2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_3|o_Q3\(1));

-- Location: MLABCELL_X82_Y28_N30
\u_2|o_Q2[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_2|o_Q2[1]~feeder_combout\ = ( \i_WDATA[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_i_WDATA[1]~input_o\,
	combout => \u_2|o_Q2[1]~feeder_combout\);

-- Location: FF_X82_Y28_N31
\u_2|o_Q2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_2|o_Q2[1]~feeder_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	ena => \u_0|o_D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_2|o_Q2\(1));

-- Location: FF_X83_Y28_N25
\u_4|o_Q4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_WDATA[1]~input_o\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => VCC,
	ena => \u_0|o_D3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_4|o_Q4\(1));

-- Location: MLABCELL_X82_Y28_N39
\u_1|o_Q1[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_1|o_Q1[1]~feeder_combout\ = ( \i_WDATA[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_i_WDATA[1]~input_o\,
	combout => \u_1|o_Q1[1]~feeder_combout\);

-- Location: FF_X82_Y28_N40
\u_1|o_Q1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_1|o_Q1[1]~feeder_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	ena => \u_0|o_D0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|o_Q1\(1));

-- Location: LABCELL_X83_Y28_N27
\u_6|o_I[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_6|o_I[1]~1_combout\ = ( \u_4|o_Q4\(1) & ( \u_1|o_Q1\(1) & ( (!\i_RADDR2~input_o\ & (((!\i_RADDR3~input_o\) # (\u_2|o_Q2\(1))))) # (\i_RADDR2~input_o\ & (((\i_RADDR3~input_o\)) # (\u_3|o_Q3\(1)))) ) ) ) # ( !\u_4|o_Q4\(1) & ( \u_1|o_Q1\(1) & ( 
-- (!\i_RADDR2~input_o\ & (((!\i_RADDR3~input_o\) # (\u_2|o_Q2\(1))))) # (\i_RADDR2~input_o\ & (\u_3|o_Q3\(1) & (!\i_RADDR3~input_o\))) ) ) ) # ( \u_4|o_Q4\(1) & ( !\u_1|o_Q1\(1) & ( (!\i_RADDR2~input_o\ & (((\i_RADDR3~input_o\ & \u_2|o_Q2\(1))))) # 
-- (\i_RADDR2~input_o\ & (((\i_RADDR3~input_o\)) # (\u_3|o_Q3\(1)))) ) ) ) # ( !\u_4|o_Q4\(1) & ( !\u_1|o_Q1\(1) & ( (!\i_RADDR2~input_o\ & (((\i_RADDR3~input_o\ & \u_2|o_Q2\(1))))) # (\i_RADDR2~input_o\ & (\u_3|o_Q3\(1) & (!\i_RADDR3~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100110001111111010000110111001101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_3|ALT_INV_o_Q3\(1),
	datab => \ALT_INV_i_RADDR2~input_o\,
	datac => \ALT_INV_i_RADDR3~input_o\,
	datad => \u_2|ALT_INV_o_Q2\(1),
	datae => \u_4|ALT_INV_o_Q4\(1),
	dataf => \u_1|ALT_INV_o_Q1\(1),
	combout => \u_6|o_I[1]~1_combout\);

-- Location: LABCELL_X83_Y28_N3
\u_6|o_I[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_6|o_I\(1) = ( \i_REN~input_o\ & ( \u_6|o_I[1]~1_combout\ ) ) # ( !\i_REN~input_o\ & ( \u_6|o_I[1]~1_combout\ & ( \u_6|o_I\(1) ) ) ) # ( !\i_REN~input_o\ & ( !\u_6|o_I[1]~1_combout\ & ( \u_6|o_I\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_6|ALT_INV_o_I\(1),
	datae => \ALT_INV_i_REN~input_o\,
	dataf => \u_6|ALT_INV_o_I[1]~1_combout\,
	combout => \u_6|o_I\(1));

-- Location: IOIBUF_X89_Y21_N21
\i_WDATA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_WDATA(2),
	o => \i_WDATA[2]~input_o\);

-- Location: FF_X83_Y28_N44
\u_4|o_Q4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_WDATA[2]~input_o\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => VCC,
	ena => \u_0|o_D3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_4|o_Q4\(2));

-- Location: MLABCELL_X82_Y28_N21
\u_2|o_Q2[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_2|o_Q2[2]~feeder_combout\ = ( \i_WDATA[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_i_WDATA[2]~input_o\,
	combout => \u_2|o_Q2[2]~feeder_combout\);

-- Location: FF_X82_Y28_N22
\u_2|o_Q2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_2|o_Q2[2]~feeder_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	ena => \u_0|o_D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_2|o_Q2\(2));

-- Location: FF_X83_Y28_N58
\u_3|o_Q3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_WDATA[2]~input_o\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => VCC,
	ena => \u_0|o_D2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_3|o_Q3\(2));

-- Location: FF_X82_Y28_N8
\u_1|o_Q1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_WDATA[2]~input_o\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => VCC,
	ena => \u_0|o_D0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|o_Q1\(2));

-- Location: LABCELL_X83_Y28_N45
\u_6|o_I[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_6|o_I[2]~2_combout\ = ( \u_3|o_Q3\(2) & ( \u_1|o_Q1\(2) & ( (!\i_RADDR3~input_o\) # ((!\i_RADDR2~input_o\ & ((\u_2|o_Q2\(2)))) # (\i_RADDR2~input_o\ & (\u_4|o_Q4\(2)))) ) ) ) # ( !\u_3|o_Q3\(2) & ( \u_1|o_Q1\(2) & ( (!\i_RADDR2~input_o\ & 
-- (((!\i_RADDR3~input_o\) # (\u_2|o_Q2\(2))))) # (\i_RADDR2~input_o\ & (\u_4|o_Q4\(2) & (\i_RADDR3~input_o\))) ) ) ) # ( \u_3|o_Q3\(2) & ( !\u_1|o_Q1\(2) & ( (!\i_RADDR2~input_o\ & (((\i_RADDR3~input_o\ & \u_2|o_Q2\(2))))) # (\i_RADDR2~input_o\ & 
-- (((!\i_RADDR3~input_o\)) # (\u_4|o_Q4\(2)))) ) ) ) # ( !\u_3|o_Q3\(2) & ( !\u_1|o_Q1\(2) & ( (\i_RADDR3~input_o\ & ((!\i_RADDR2~input_o\ & ((\u_2|o_Q2\(2)))) # (\i_RADDR2~input_o\ & (\u_4|o_Q4\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011010100010101101110100001101010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RADDR2~input_o\,
	datab => \u_4|ALT_INV_o_Q4\(2),
	datac => \ALT_INV_i_RADDR3~input_o\,
	datad => \u_2|ALT_INV_o_Q2\(2),
	datae => \u_3|ALT_INV_o_Q3\(2),
	dataf => \u_1|ALT_INV_o_Q1\(2),
	combout => \u_6|o_I[2]~2_combout\);

-- Location: LABCELL_X83_Y28_N54
\u_6|o_I[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_6|o_I\(2) = ( \i_REN~input_o\ & ( \u_6|o_I[2]~2_combout\ ) ) # ( !\i_REN~input_o\ & ( \u_6|o_I[2]~2_combout\ & ( \u_6|o_I\(2) ) ) ) # ( !\i_REN~input_o\ & ( !\u_6|o_I[2]~2_combout\ & ( \u_6|o_I\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_6|ALT_INV_o_I\(2),
	datae => \ALT_INV_i_REN~input_o\,
	dataf => \u_6|ALT_INV_o_I[2]~2_combout\,
	combout => \u_6|o_I\(2));

-- Location: IOIBUF_X89_Y21_N38
\i_WDATA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_WDATA(3),
	o => \i_WDATA[3]~input_o\);

-- Location: FF_X83_Y28_N41
\u_3|o_Q3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_WDATA[3]~input_o\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => VCC,
	ena => \u_0|o_D2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_3|o_Q3\(3));

-- Location: FF_X82_Y28_N43
\u_2|o_Q2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_WDATA[3]~input_o\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => VCC,
	ena => \u_0|o_D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_2|o_Q2\(3));

-- Location: FF_X83_Y28_N7
\u_4|o_Q4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_WDATA[3]~input_o\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => VCC,
	ena => \u_0|o_D3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_4|o_Q4\(3));

-- Location: FF_X82_Y28_N50
\u_1|o_Q1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_WDATA[3]~input_o\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => VCC,
	ena => \u_0|o_D0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|o_Q1\(3));

-- Location: LABCELL_X83_Y28_N9
\u_6|o_I[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_6|o_I[3]~3_combout\ = ( \u_4|o_Q4\(3) & ( \u_1|o_Q1\(3) & ( (!\i_RADDR2~input_o\ & (((!\i_RADDR3~input_o\) # (\u_2|o_Q2\(3))))) # (\i_RADDR2~input_o\ & (((\i_RADDR3~input_o\)) # (\u_3|o_Q3\(3)))) ) ) ) # ( !\u_4|o_Q4\(3) & ( \u_1|o_Q1\(3) & ( 
-- (!\i_RADDR2~input_o\ & (((!\i_RADDR3~input_o\) # (\u_2|o_Q2\(3))))) # (\i_RADDR2~input_o\ & (\u_3|o_Q3\(3) & ((!\i_RADDR3~input_o\)))) ) ) ) # ( \u_4|o_Q4\(3) & ( !\u_1|o_Q1\(3) & ( (!\i_RADDR2~input_o\ & (((\u_2|o_Q2\(3) & \i_RADDR3~input_o\)))) # 
-- (\i_RADDR2~input_o\ & (((\i_RADDR3~input_o\)) # (\u_3|o_Q3\(3)))) ) ) ) # ( !\u_4|o_Q4\(3) & ( !\u_1|o_Q1\(3) & ( (!\i_RADDR2~input_o\ & (((\u_2|o_Q2\(3) & \i_RADDR3~input_o\)))) # (\i_RADDR2~input_o\ & (\u_3|o_Q3\(3) & ((!\i_RADDR3~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010000100010101111110111011000010101011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RADDR2~input_o\,
	datab => \u_3|ALT_INV_o_Q3\(3),
	datac => \u_2|ALT_INV_o_Q2\(3),
	datad => \ALT_INV_i_RADDR3~input_o\,
	datae => \u_4|ALT_INV_o_Q4\(3),
	dataf => \u_1|ALT_INV_o_Q1\(3),
	combout => \u_6|o_I[3]~3_combout\);

-- Location: LABCELL_X83_Y28_N36
\u_6|o_I[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_6|o_I\(3) = ( \i_REN~input_o\ & ( \u_6|o_I[3]~3_combout\ ) ) # ( !\i_REN~input_o\ & ( \u_6|o_I[3]~3_combout\ & ( \u_6|o_I\(3) ) ) ) # ( !\i_REN~input_o\ & ( !\u_6|o_I[3]~3_combout\ & ( \u_6|o_I\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_6|ALT_INV_o_I\(3),
	datae => \ALT_INV_i_REN~input_o\,
	dataf => \u_6|ALT_INV_o_I[3]~3_combout\,
	combout => \u_6|o_I\(3));

-- Location: IOIBUF_X89_Y20_N78
\i_WDATA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_WDATA(4),
	o => \i_WDATA[4]~input_o\);

-- Location: FF_X83_Y28_N32
\u_3|o_Q3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_WDATA[4]~input_o\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => VCC,
	ena => \u_0|o_D2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_3|o_Q3\(4));

-- Location: FF_X82_Y28_N4
\u_2|o_Q2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_WDATA[4]~input_o\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => VCC,
	ena => \u_0|o_D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_2|o_Q2\(4));

-- Location: FF_X83_Y28_N13
\u_4|o_Q4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_WDATA[4]~input_o\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => VCC,
	ena => \u_0|o_D3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_4|o_Q4\(4));

-- Location: FF_X82_Y28_N56
\u_1|o_Q1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_WDATA[4]~input_o\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => VCC,
	ena => \u_0|o_D0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|o_Q1\(4));

-- Location: LABCELL_X83_Y28_N15
\u_6|o_I[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_6|o_I[4]~4_combout\ = ( \u_4|o_Q4\(4) & ( \u_1|o_Q1\(4) & ( (!\i_RADDR2~input_o\ & (((!\i_RADDR3~input_o\) # (\u_2|o_Q2\(4))))) # (\i_RADDR2~input_o\ & (((\i_RADDR3~input_o\)) # (\u_3|o_Q3\(4)))) ) ) ) # ( !\u_4|o_Q4\(4) & ( \u_1|o_Q1\(4) & ( 
-- (!\i_RADDR2~input_o\ & (((!\i_RADDR3~input_o\) # (\u_2|o_Q2\(4))))) # (\i_RADDR2~input_o\ & (\u_3|o_Q3\(4) & ((!\i_RADDR3~input_o\)))) ) ) ) # ( \u_4|o_Q4\(4) & ( !\u_1|o_Q1\(4) & ( (!\i_RADDR2~input_o\ & (((\u_2|o_Q2\(4) & \i_RADDR3~input_o\)))) # 
-- (\i_RADDR2~input_o\ & (((\i_RADDR3~input_o\)) # (\u_3|o_Q3\(4)))) ) ) ) # ( !\u_4|o_Q4\(4) & ( !\u_1|o_Q1\(4) & ( (!\i_RADDR2~input_o\ & (((\u_2|o_Q2\(4) & \i_RADDR3~input_o\)))) # (\i_RADDR2~input_o\ & (\u_3|o_Q3\(4) & ((!\i_RADDR3~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010000100010101111110111011000010101011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RADDR2~input_o\,
	datab => \u_3|ALT_INV_o_Q3\(4),
	datac => \u_2|ALT_INV_o_Q2\(4),
	datad => \ALT_INV_i_RADDR3~input_o\,
	datae => \u_4|ALT_INV_o_Q4\(4),
	dataf => \u_1|ALT_INV_o_Q1\(4),
	combout => \u_6|o_I[4]~4_combout\);

-- Location: LABCELL_X83_Y28_N51
\u_6|o_I[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_6|o_I\(4) = ( \i_REN~input_o\ & ( \u_6|o_I[4]~4_combout\ ) ) # ( !\i_REN~input_o\ & ( \u_6|o_I[4]~4_combout\ & ( \u_6|o_I\(4) ) ) ) # ( !\i_REN~input_o\ & ( !\u_6|o_I[4]~4_combout\ & ( \u_6|o_I\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_6|ALT_INV_o_I\(4),
	datae => \ALT_INV_i_REN~input_o\,
	dataf => \u_6|ALT_INV_o_I[4]~4_combout\,
	combout => \u_6|o_I\(4));

-- Location: IOIBUF_X89_Y23_N55
\i_WDATA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_WDATA(5),
	o => \i_WDATA[5]~input_o\);

-- Location: FF_X84_Y28_N8
\u_4|o_Q4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_WDATA[5]~input_o\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => VCC,
	ena => \u_0|o_D3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_4|o_Q4\(5));

-- Location: FF_X84_Y28_N59
\u_1|o_Q1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_WDATA[5]~input_o\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => VCC,
	ena => \u_0|o_D0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|o_Q1\(5));

-- Location: LABCELL_X85_Y28_N57
\u_2|o_Q2[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_2|o_Q2[5]~feeder_combout\ = ( \i_WDATA[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_i_WDATA[5]~input_o\,
	combout => \u_2|o_Q2[5]~feeder_combout\);

-- Location: FF_X85_Y28_N58
\u_2|o_Q2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_2|o_Q2[5]~feeder_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	ena => \u_0|o_D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_2|o_Q2\(5));

-- Location: LABCELL_X85_Y28_N48
\u_3|o_Q3[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_3|o_Q3[5]~feeder_combout\ = ( \i_WDATA[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_i_WDATA[5]~input_o\,
	combout => \u_3|o_Q3[5]~feeder_combout\);

-- Location: FF_X85_Y28_N50
\u_3|o_Q3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_3|o_Q3[5]~feeder_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	ena => \u_0|o_D2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_3|o_Q3\(5));

-- Location: MLABCELL_X84_Y28_N33
\u_6|o_I[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_6|o_I[5]~5_combout\ = ( \u_2|o_Q2\(5) & ( \u_3|o_Q3\(5) & ( (!\i_RADDR3~input_o\ & (((\i_RADDR2~input_o\) # (\u_1|o_Q1\(5))))) # (\i_RADDR3~input_o\ & (((!\i_RADDR2~input_o\)) # (\u_4|o_Q4\(5)))) ) ) ) # ( !\u_2|o_Q2\(5) & ( \u_3|o_Q3\(5) & ( 
-- (!\i_RADDR3~input_o\ & (((\i_RADDR2~input_o\) # (\u_1|o_Q1\(5))))) # (\i_RADDR3~input_o\ & (\u_4|o_Q4\(5) & ((\i_RADDR2~input_o\)))) ) ) ) # ( \u_2|o_Q2\(5) & ( !\u_3|o_Q3\(5) & ( (!\i_RADDR3~input_o\ & (((\u_1|o_Q1\(5) & !\i_RADDR2~input_o\)))) # 
-- (\i_RADDR3~input_o\ & (((!\i_RADDR2~input_o\)) # (\u_4|o_Q4\(5)))) ) ) ) # ( !\u_2|o_Q2\(5) & ( !\u_3|o_Q3\(5) & ( (!\i_RADDR3~input_o\ & (((\u_1|o_Q1\(5) & !\i_RADDR2~input_o\)))) # (\i_RADDR3~input_o\ & (\u_4|o_Q4\(5) & ((\i_RADDR2~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001010111110001000100001010101110110101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RADDR3~input_o\,
	datab => \u_4|ALT_INV_o_Q4\(5),
	datac => \u_1|ALT_INV_o_Q1\(5),
	datad => \ALT_INV_i_RADDR2~input_o\,
	datae => \u_2|ALT_INV_o_Q2\(5),
	dataf => \u_3|ALT_INV_o_Q3\(5),
	combout => \u_6|o_I[5]~5_combout\);

-- Location: MLABCELL_X84_Y28_N24
\u_6|o_I[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_6|o_I\(5) = ( \i_REN~input_o\ & ( \u_6|o_I[5]~5_combout\ ) ) # ( !\i_REN~input_o\ & ( \u_6|o_I[5]~5_combout\ & ( \u_6|o_I\(5) ) ) ) # ( !\i_REN~input_o\ & ( !\u_6|o_I[5]~5_combout\ & ( \u_6|o_I\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_6|ALT_INV_o_I\(5),
	datae => \ALT_INV_i_REN~input_o\,
	dataf => \u_6|ALT_INV_o_I[5]~5_combout\,
	combout => \u_6|o_I\(5));

-- Location: IOIBUF_X89_Y25_N55
\i_WDATA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_WDATA(6),
	o => \i_WDATA[6]~input_o\);

-- Location: FF_X84_Y28_N38
\u_4|o_Q4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_WDATA[6]~input_o\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => VCC,
	ena => \u_0|o_D3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_4|o_Q4\(6));

-- Location: FF_X84_Y28_N17
\u_1|o_Q1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_WDATA[6]~input_o\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => VCC,
	ena => \u_0|o_D0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|o_Q1\(6));

-- Location: LABCELL_X85_Y28_N0
\u_2|o_Q2[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_2|o_Q2[6]~feeder_combout\ = ( \i_WDATA[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_i_WDATA[6]~input_o\,
	combout => \u_2|o_Q2[6]~feeder_combout\);

-- Location: FF_X85_Y28_N1
\u_2|o_Q2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_2|o_Q2[6]~feeder_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	ena => \u_0|o_D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_2|o_Q2\(6));

-- Location: LABCELL_X85_Y28_N42
\u_3|o_Q3[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_3|o_Q3[6]~feeder_combout\ = ( \i_WDATA[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_i_WDATA[6]~input_o\,
	combout => \u_3|o_Q3[6]~feeder_combout\);

-- Location: FF_X85_Y28_N43
\u_3|o_Q3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_3|o_Q3[6]~feeder_combout\,
	clrn => \ALT_INV_i_CLR~input_o\,
	ena => \u_0|o_D2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_3|o_Q3\(6));

-- Location: MLABCELL_X84_Y28_N39
\u_6|o_I[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_6|o_I[6]~6_combout\ = ( \u_2|o_Q2\(6) & ( \u_3|o_Q3\(6) & ( (!\i_RADDR3~input_o\ & (((\i_RADDR2~input_o\) # (\u_1|o_Q1\(6))))) # (\i_RADDR3~input_o\ & (((!\i_RADDR2~input_o\)) # (\u_4|o_Q4\(6)))) ) ) ) # ( !\u_2|o_Q2\(6) & ( \u_3|o_Q3\(6) & ( 
-- (!\i_RADDR3~input_o\ & (((\i_RADDR2~input_o\) # (\u_1|o_Q1\(6))))) # (\i_RADDR3~input_o\ & (\u_4|o_Q4\(6) & ((\i_RADDR2~input_o\)))) ) ) ) # ( \u_2|o_Q2\(6) & ( !\u_3|o_Q3\(6) & ( (!\i_RADDR3~input_o\ & (((\u_1|o_Q1\(6) & !\i_RADDR2~input_o\)))) # 
-- (\i_RADDR3~input_o\ & (((!\i_RADDR2~input_o\)) # (\u_4|o_Q4\(6)))) ) ) ) # ( !\u_2|o_Q2\(6) & ( !\u_3|o_Q3\(6) & ( (!\i_RADDR3~input_o\ & (((\u_1|o_Q1\(6) & !\i_RADDR2~input_o\)))) # (\i_RADDR3~input_o\ & (\u_4|o_Q4\(6) & ((\i_RADDR2~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001111110000010100110000111101010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_4|ALT_INV_o_Q4\(6),
	datab => \u_1|ALT_INV_o_Q1\(6),
	datac => \ALT_INV_i_RADDR3~input_o\,
	datad => \ALT_INV_i_RADDR2~input_o\,
	datae => \u_2|ALT_INV_o_Q2\(6),
	dataf => \u_3|ALT_INV_o_Q3\(6),
	combout => \u_6|o_I[6]~6_combout\);

-- Location: MLABCELL_X84_Y28_N0
\u_6|o_I[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_6|o_I\(6) = ( \u_6|o_I[6]~6_combout\ & ( (\i_REN~input_o\) # (\u_6|o_I\(6)) ) ) # ( !\u_6|o_I[6]~6_combout\ & ( (\u_6|o_I\(6) & !\i_REN~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_6|ALT_INV_o_I\(6),
	datad => \ALT_INV_i_REN~input_o\,
	dataf => \u_6|ALT_INV_o_I[6]~6_combout\,
	combout => \u_6|o_I\(6));

-- Location: IOIBUF_X89_Y23_N38
\i_WDATA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_WDATA(7),
	o => \i_WDATA[7]~input_o\);

-- Location: FF_X84_Y28_N50
\u_4|o_Q4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_WDATA[7]~input_o\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => VCC,
	ena => \u_0|o_D3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_4|o_Q4\(7));

-- Location: FF_X84_Y28_N47
\u_1|o_Q1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_WDATA[7]~input_o\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => VCC,
	ena => \u_0|o_D0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_1|o_Q1\(7));

-- Location: FF_X85_Y28_N28
\u_2|o_Q2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_WDATA[7]~input_o\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => VCC,
	ena => \u_0|o_D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_2|o_Q2\(7));

-- Location: FF_X85_Y28_N37
\u_3|o_Q3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_WDATA[7]~input_o\,
	clrn => \ALT_INV_i_CLR~input_o\,
	sload => VCC,
	ena => \u_0|o_D2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_3|o_Q3\(7));

-- Location: MLABCELL_X84_Y28_N51
\u_6|o_I[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_6|o_I[7]~7_combout\ = ( \u_2|o_Q2\(7) & ( \u_3|o_Q3\(7) & ( (!\i_RADDR3~input_o\ & (((\i_RADDR2~input_o\) # (\u_1|o_Q1\(7))))) # (\i_RADDR3~input_o\ & (((!\i_RADDR2~input_o\)) # (\u_4|o_Q4\(7)))) ) ) ) # ( !\u_2|o_Q2\(7) & ( \u_3|o_Q3\(7) & ( 
-- (!\i_RADDR3~input_o\ & (((\i_RADDR2~input_o\) # (\u_1|o_Q1\(7))))) # (\i_RADDR3~input_o\ & (\u_4|o_Q4\(7) & ((\i_RADDR2~input_o\)))) ) ) ) # ( \u_2|o_Q2\(7) & ( !\u_3|o_Q3\(7) & ( (!\i_RADDR3~input_o\ & (((\u_1|o_Q1\(7) & !\i_RADDR2~input_o\)))) # 
-- (\i_RADDR3~input_o\ & (((!\i_RADDR2~input_o\)) # (\u_4|o_Q4\(7)))) ) ) ) # ( !\u_2|o_Q2\(7) & ( !\u_3|o_Q3\(7) & ( (!\i_RADDR3~input_o\ & (((\u_1|o_Q1\(7) & !\i_RADDR2~input_o\)))) # (\i_RADDR3~input_o\ & (\u_4|o_Q4\(7) & ((\i_RADDR2~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001111110000010100110000111101010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_4|ALT_INV_o_Q4\(7),
	datab => \u_1|ALT_INV_o_Q1\(7),
	datac => \ALT_INV_i_RADDR3~input_o\,
	datad => \ALT_INV_i_RADDR2~input_o\,
	datae => \u_2|ALT_INV_o_Q2\(7),
	dataf => \u_3|ALT_INV_o_Q3\(7),
	combout => \u_6|o_I[7]~7_combout\);

-- Location: MLABCELL_X84_Y28_N18
\u_6|o_I[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_6|o_I\(7) = ( \u_6|o_I[7]~7_combout\ & ( (\i_REN~input_o\) # (\u_6|o_I\(7)) ) ) # ( !\u_6|o_I[7]~7_combout\ & ( (\u_6|o_I\(7) & !\i_REN~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_6|ALT_INV_o_I\(7),
	datad => \ALT_INV_i_REN~input_o\,
	dataf => \u_6|ALT_INV_o_I[7]~7_combout\,
	combout => \u_6|o_I\(7));

-- Location: LABCELL_X50_Y36_N3
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


