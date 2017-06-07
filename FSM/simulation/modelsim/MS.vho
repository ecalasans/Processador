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

-- DATE "06/06/2017 13:53:22"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MS IS
    PORT (
	clk : IN std_logic;
	key0 : IN std_logic;
	key3 : IN std_logic;
	RF_rp_zero : IN std_logic;
	IR : IN std_logic_vector(15 DOWNTO 0);
	ld_PC : OUT std_logic;
	clr_PC : OUT std_logic;
	inc_PC : OUT std_logic;
	rd_I : OUT std_logic;
	ld_IR : OUT std_logic;
	D_rw : OUT std_logic;
	SelMUX_mem : OUT std_logic;
	RF_W_wr : OUT std_logic;
	RF_rp_rd : OUT std_logic;
	RF_rq_rd : OUT std_logic;
	RF_sel : OUT std_logic_vector(1 DOWNTO 0);
	RF_W_addr : OUT std_logic_vector(3 DOWNTO 0);
	RF_rp_addr : OUT std_logic_vector(3 DOWNTO 0);
	RF_rq_addr : OUT std_logic_vector(3 DOWNTO 0);
	sel_ula : OUT std_logic_vector(3 DOWNTO 0);
	disp1 : OUT std_logic_vector(3 DOWNTO 0);
	D_addr : OUT std_logic_vector(7 DOWNTO 0);
	RF_W_data : OUT std_logic_vector(7 DOWNTO 0)
	);
END MS;

-- Design Ports Information
-- ld_PC	=>  Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clr_PC	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- inc_PC	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rd_I	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ld_IR	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_rw	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SelMUX_mem	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RF_W_wr	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RF_rp_rd	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RF_rq_rd	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RF_sel[0]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RF_sel[1]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RF_W_addr[0]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RF_W_addr[1]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RF_W_addr[2]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RF_W_addr[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RF_rp_addr[0]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RF_rp_addr[1]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RF_rp_addr[2]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RF_rp_addr[3]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RF_rq_addr[0]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RF_rq_addr[1]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RF_rq_addr[2]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RF_rq_addr[3]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sel_ula[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sel_ula[1]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sel_ula[2]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sel_ula[3]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[0]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[1]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[2]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[3]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_addr[0]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_addr[1]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_addr[2]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_addr[3]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_addr[4]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_addr[5]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_addr[6]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_addr[7]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RF_W_data[0]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RF_W_data[1]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RF_W_data[2]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RF_W_data[3]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RF_W_data[4]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RF_W_data[5]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RF_W_data[6]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RF_W_data[7]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR[8]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[9]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[10]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[11]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[4]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[6]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[7]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[2]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[3]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[12]	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[13]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[14]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR[15]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key0	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key3	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RF_rp_zero	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF MS IS
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
SIGNAL ww_key0 : std_logic;
SIGNAL ww_key3 : std_logic;
SIGNAL ww_RF_rp_zero : std_logic;
SIGNAL ww_IR : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ld_PC : std_logic;
SIGNAL ww_clr_PC : std_logic;
SIGNAL ww_inc_PC : std_logic;
SIGNAL ww_rd_I : std_logic;
SIGNAL ww_ld_IR : std_logic;
SIGNAL ww_D_rw : std_logic;
SIGNAL ww_SelMUX_mem : std_logic;
SIGNAL ww_RF_W_wr : std_logic;
SIGNAL ww_RF_rp_rd : std_logic;
SIGNAL ww_RF_rq_rd : std_logic;
SIGNAL ww_RF_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_RF_W_addr : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RF_rp_addr : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RF_rq_addr : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sel_ula : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_disp1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D_addr : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RF_W_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \disp1~0_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \y~2_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \y[3]~8_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \key3~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \key0~combout\ : std_logic;
SIGNAL \RF_rp_zero~combout\ : std_logic;
SIGNAL \y[2]~3_combout\ : std_logic;
SIGNAL \y[2]~4_combout\ : std_logic;
SIGNAL \y[2]~5_combout\ : std_logic;
SIGNAL \y~6_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \y[3]~7_combout\ : std_logic;
SIGNAL \y[3]~10_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \y[3]~9_combout\ : std_logic;
SIGNAL \Equal30~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Equal16~4_combout\ : std_logic;
SIGNAL \Equal16~5_combout\ : std_logic;
SIGNAL \Equal21~0_combout\ : std_logic;
SIGNAL \Equal29~0_combout\ : std_logic;
SIGNAL \Equal30~1_combout\ : std_logic;
SIGNAL \Equal20~0_combout\ : std_logic;
SIGNAL \RF_W_wr~5_combout\ : std_logic;
SIGNAL \RF_W_wr~6_combout\ : std_logic;
SIGNAL \RF_W_wr~4_combout\ : std_logic;
SIGNAL \RF_rp_rd~2_combout\ : std_logic;
SIGNAL \RF_rp_rd~3_combout\ : std_logic;
SIGNAL \Equal18~0_combout\ : std_logic;
SIGNAL \RF_sel~0_combout\ : std_logic;
SIGNAL \RF_W_addr~0_combout\ : std_logic;
SIGNAL \RF_W_addr~1_combout\ : std_logic;
SIGNAL \RF_W_addr~2_combout\ : std_logic;
SIGNAL \RF_W_addr~3_combout\ : std_logic;
SIGNAL \RF_rp_addr~0_combout\ : std_logic;
SIGNAL \RF_rp_addr~1_combout\ : std_logic;
SIGNAL \RF_rp_addr~2_combout\ : std_logic;
SIGNAL \RF_rp_addr~3_combout\ : std_logic;
SIGNAL \RF_rq_addr~0_combout\ : std_logic;
SIGNAL \RF_rq_addr~1_combout\ : std_logic;
SIGNAL \RF_rq_addr~2_combout\ : std_logic;
SIGNAL \RF_rq_addr~3_combout\ : std_logic;
SIGNAL \sel_ula~3_combout\ : std_logic;
SIGNAL \sel_ula~24_combout\ : std_logic;
SIGNAL \sel_ula~25_combout\ : std_logic;
SIGNAL \sel_ula~26_combout\ : std_logic;
SIGNAL \sel_ula~27_combout\ : std_logic;
SIGNAL \disp1~1_combout\ : std_logic;
SIGNAL \disp1~2_combout\ : std_logic;
SIGNAL \disp1~3_combout\ : std_logic;
SIGNAL \disp1~4_combout\ : std_logic;
SIGNAL \disp1~5_combout\ : std_logic;
SIGNAL \D_addr~3_combout\ : std_logic;
SIGNAL \D_addr~48_combout\ : std_logic;
SIGNAL \D_addr~49_combout\ : std_logic;
SIGNAL \D_addr~50_combout\ : std_logic;
SIGNAL \D_addr~51_combout\ : std_logic;
SIGNAL \D_addr~52_combout\ : std_logic;
SIGNAL \D_addr~53_combout\ : std_logic;
SIGNAL \D_addr~54_combout\ : std_logic;
SIGNAL \D_addr~55_combout\ : std_logic;
SIGNAL \RF_W_data~0_combout\ : std_logic;
SIGNAL \RF_W_data~1_combout\ : std_logic;
SIGNAL \RF_W_data~2_combout\ : std_logic;
SIGNAL \RF_W_data~3_combout\ : std_logic;
SIGNAL \RF_W_data~4_combout\ : std_logic;
SIGNAL \RF_W_data~5_combout\ : std_logic;
SIGNAL \RF_W_data~6_combout\ : std_logic;
SIGNAL \RF_W_data~7_combout\ : std_logic;
SIGNAL y : std_logic_vector(4 DOWNTO 0);
SIGNAL \IR~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_RF_W_wr~6_combout\ : std_logic;
SIGNAL \ALT_INV_RF_W_wr~4_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_key0 <= key0;
ww_key3 <= key3;
ww_RF_rp_zero <= RF_rp_zero;
ww_IR <= IR;
ld_PC <= ww_ld_PC;
clr_PC <= ww_clr_PC;
inc_PC <= ww_inc_PC;
rd_I <= ww_rd_I;
ld_IR <= ww_ld_IR;
D_rw <= ww_D_rw;
SelMUX_mem <= ww_SelMUX_mem;
RF_W_wr <= ww_RF_W_wr;
RF_rp_rd <= ww_RF_rp_rd;
RF_rq_rd <= ww_RF_rq_rd;
RF_sel <= ww_RF_sel;
RF_W_addr <= ww_RF_W_addr;
RF_rp_addr <= ww_RF_rp_addr;
RF_rq_addr <= ww_RF_rq_addr;
sel_ula <= ww_sel_ula;
disp1 <= ww_disp1;
D_addr <= ww_D_addr;
RF_W_data <= ww_RF_W_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_RF_W_wr~6_combout\ <= NOT \RF_W_wr~6_combout\;
\ALT_INV_RF_W_wr~4_combout\ <= NOT \RF_W_wr~4_combout\;

-- Location: LCCOMB_X3_Y29_N24
\disp1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp1~0_combout\ = (y(2)) # ((y(3)) # ((y(1) & y(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y(2),
	datab => y(1),
	datac => y(3),
	datad => y(0),
	combout => \disp1~0_combout\);

-- Location: LCCOMB_X2_Y29_N0
\Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (y(4) & (((!\key0~combout\)))) # (!y(4) & (!\key3~combout\ & ((!y(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key3~combout\,
	datab => \key0~combout\,
	datac => y(0),
	datad => y(4),
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X1_Y29_N20
\y~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \y~2_combout\ = (\IR~combout\(12)) # ((\IR~combout\(15) & (\IR~combout\(14) & \IR~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(15),
	datab => \IR~combout\(14),
	datac => \IR~combout\(12),
	datad => \IR~combout\(13),
	combout => \y~2_combout\);

-- Location: LCCOMB_X2_Y29_N24
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (y(3) & (\RF_rp_zero~combout\ & !y(0))) # (!y(3) & ((y(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RF_rp_zero~combout\,
	datac => y(3),
	datad => y(0),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X1_Y29_N2
\Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!\IR~combout\(13) & (\IR~combout\(14) & (\IR~combout\(12) & !\key0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(13),
	datab => \IR~combout\(14),
	datac => \IR~combout\(12),
	datad => \key0~combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X1_Y29_N0
\y[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \y[3]~8_combout\ = \IR~combout\(15) $ (((\IR~combout\(14) & ((\IR~combout\(12)) # (\IR~combout\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(15),
	datab => \IR~combout\(14),
	datac => \IR~combout\(12),
	datad => \IR~combout\(13),
	combout => \y[3]~8_combout\);

-- Location: LCCOMB_X2_Y29_N6
\Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (!y(1) & (!y(2) & (!y(3) & \Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y(1),
	datab => y(2),
	datac => y(3),
	datad => \Mux4~3_combout\,
	combout => \Mux4~6_combout\);

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key3,
	combout => \key3~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key0,
	combout => \key0~combout\);

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(15),
	combout => \IR~combout\(15));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RF_rp_zero~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RF_rp_zero,
	combout => \RF_rp_zero~combout\);

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(13),
	combout => \IR~combout\(13));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(14),
	combout => \IR~combout\(14));

-- Location: LCCOMB_X2_Y29_N12
\y[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \y[2]~3_combout\ = (!y(3) & (\IR~combout\(14) $ (((\IR~combout\(12)) # (\IR~combout\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(12),
	datab => \IR~combout\(13),
	datac => y(3),
	datad => \IR~combout\(14),
	combout => \y[2]~3_combout\);

-- Location: LCCOMB_X2_Y29_N10
\y[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \y[2]~4_combout\ = (y(1) & (((\y[2]~3_combout\)))) # (!y(1) & (\RF_rp_zero~combout\ & (y(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y(1),
	datab => \RF_rp_zero~combout\,
	datac => y(3),
	datad => \y[2]~3_combout\,
	combout => \y[2]~4_combout\);

-- Location: LCCOMB_X2_Y29_N18
\y[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \y[2]~5_combout\ = (\Mux3~0_combout\ & (!y(0) & (!y(2) & \y[2]~4_combout\))) # (!\Mux3~0_combout\ & (((y(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y(0),
	datab => \Mux3~0_combout\,
	datac => y(2),
	datad => \y[2]~4_combout\,
	combout => \y[2]~5_combout\);

-- Location: LCFF_X2_Y29_N19
\y[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \y[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y(2));

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(12),
	combout => \IR~combout\(12));

-- Location: LCCOMB_X1_Y29_N16
\y~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \y~6_combout\ = (\IR~combout\(12) & (((!\IR~combout\(13))))) # (!\IR~combout\(12) & (\IR~combout\(13) & ((!\IR~combout\(14)) # (!\IR~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(15),
	datab => \IR~combout\(14),
	datac => \IR~combout\(12),
	datad => \IR~combout\(13),
	combout => \y~6_combout\);

-- Location: LCCOMB_X2_Y29_N22
\Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (y(1) & (((!\y~6_combout\ & \Equal30~0_combout\)) # (!\Mux3~0_combout\))) # (!y(1) & (\Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y(1),
	datab => \Mux3~0_combout\,
	datac => \y~6_combout\,
	datad => \Equal30~0_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X2_Y29_N16
\Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\ & ((y(1)) # ((\Mux3~1_combout\ & !y(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => y(2),
	datac => y(1),
	datad => \Mux3~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCFF_X2_Y29_N17
\y[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y(1));

-- Location: LCCOMB_X2_Y29_N28
\y[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \y[3]~7_combout\ = (\RF_rp_zero~combout\ & (!y(0) & (!y(1) & !y(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF_rp_zero~combout\,
	datab => y(0),
	datac => y(1),
	datad => y(2),
	combout => \y[3]~7_combout\);

-- Location: LCCOMB_X2_Y29_N20
\y[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \y[3]~10_combout\ = (y(3) & ((\key0~combout\) # ((y(4)) # (\y[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0~combout\,
	datab => y(4),
	datac => y(3),
	datad => \y[3]~7_combout\,
	combout => \y[3]~10_combout\);

-- Location: LCCOMB_X1_Y29_N12
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!y(3) & (!y(0) & (y(1) & !y(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y(3),
	datab => y(0),
	datac => y(1),
	datad => y(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X2_Y29_N4
\y[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \y[3]~9_combout\ = (\y[3]~10_combout\) # ((\y[3]~8_combout\ & (\Mux3~0_combout\ & \Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[3]~8_combout\,
	datab => \Mux3~0_combout\,
	datac => \y[3]~10_combout\,
	datad => \Mux0~0_combout\,
	combout => \y[3]~9_combout\);

-- Location: LCFF_X2_Y29_N5
\y[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \y[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y(3));

-- Location: LCCOMB_X2_Y29_N2
\Equal30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal30~0_combout\ = (!y(0) & (!y(3) & !y(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y(0),
	datac => y(3),
	datad => y(2),
	combout => \Equal30~0_combout\);

-- Location: LCCOMB_X2_Y29_N14
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (y(4) & ((y(1)) # ((\key0~combout\) # (!\Equal30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y(1),
	datab => y(4),
	datac => \key0~combout\,
	datad => \Equal30~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X2_Y29_N30
\Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~1_combout\) # ((\Mux0~2_combout\ & (\IR~combout\(15) & \Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \IR~combout\(15),
	datac => \Mux0~1_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCFF_X2_Y29_N31
\y[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y(4));

-- Location: LCCOMB_X2_Y29_N26
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\key0~combout\ & !y(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key0~combout\,
	datad => y(4),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y29_N6
\Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (y(0) & ((\key0~combout\) # ((y(1)) # (y(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0~combout\,
	datab => y(0),
	datac => y(1),
	datad => y(4),
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X1_Y29_N18
\Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (y(2)) # ((y(3)) # ((!\y~2_combout\ & y(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~2_combout\,
	datab => y(2),
	datac => y(1),
	datad => y(3),
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X2_Y29_N8
\Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux4~6_combout\) # ((\Mux4~2_combout\) # ((\Mux3~0_combout\ & \Mux4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~6_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux4~2_combout\,
	datad => \Mux4~4_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCFF_X2_Y29_N9
\y[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y(0));

-- Location: LCCOMB_X3_Y29_N20
\Equal16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal16~4_combout\ = (!y(4) & !y(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y(4),
	datac => y(3),
	combout => \Equal16~4_combout\);

-- Location: LCCOMB_X3_Y29_N28
\Equal16~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal16~5_combout\ = (y(0) & (!y(2) & (\Equal16~4_combout\ & !y(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y(0),
	datab => y(2),
	datac => \Equal16~4_combout\,
	datad => y(1),
	combout => \Equal16~5_combout\);

-- Location: LCCOMB_X3_Y29_N10
\Equal21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal21~0_combout\ = (y(2) & (!y(3) & (!y(4) & !y(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y(2),
	datab => y(3),
	datac => y(4),
	datad => y(1),
	combout => \Equal21~0_combout\);

-- Location: LCCOMB_X3_Y29_N16
\Equal29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal29~0_combout\ = (!y(0) & \Equal21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y(0),
	datad => \Equal21~0_combout\,
	combout => \Equal29~0_combout\);

-- Location: LCCOMB_X3_Y29_N18
\Equal30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal30~1_combout\ = (\Equal30~0_combout\ & (y(4) & !y(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal30~0_combout\,
	datac => y(4),
	datad => y(1),
	combout => \Equal30~1_combout\);

-- Location: LCCOMB_X3_Y29_N12
\Equal20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal20~0_combout\ = (!y(0) & (y(2) & (\Equal16~4_combout\ & y(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y(0),
	datab => y(2),
	datac => \Equal16~4_combout\,
	datad => y(1),
	combout => \Equal20~0_combout\);

-- Location: LCCOMB_X3_Y29_N2
\RF_W_wr~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_W_wr~5_combout\ = (y(2) & ((y(3) & (y(1) & y(0))) # (!y(3) & ((!y(0)))))) # (!y(2) & (y(3) $ (((y(1)) # (y(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y(2),
	datab => y(1),
	datac => y(3),
	datad => y(0),
	combout => \RF_W_wr~5_combout\);

-- Location: LCCOMB_X3_Y29_N0
\RF_W_wr~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_W_wr~6_combout\ = (\RF_W_wr~5_combout\) # (y(4) $ (((!y(2) & !y(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y(2),
	datab => y(3),
	datac => y(4),
	datad => \RF_W_wr~5_combout\,
	combout => \RF_W_wr~6_combout\);

-- Location: LCCOMB_X37_Y35_N20
\RF_W_wr~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_W_wr~4_combout\ = (\Equal20~0_combout\) # (!\RF_W_wr~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal20~0_combout\,
	datac => \RF_W_wr~6_combout\,
	combout => \RF_W_wr~4_combout\);

-- Location: LCCOMB_X3_Y29_N8
\RF_rp_rd~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_rp_rd~2_combout\ = (y(2) & ((y(0) & ((!y(3)))) # (!y(0) & (!y(1))))) # (!y(2) & ((y(3)) # ((y(1) & y(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y(2),
	datab => y(1),
	datac => y(3),
	datad => y(0),
	combout => \RF_rp_rd~2_combout\);

-- Location: LCCOMB_X3_Y29_N6
\RF_rp_rd~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_rp_rd~3_combout\ = (\RF_rp_rd~2_combout\ & !y(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RF_rp_rd~2_combout\,
	datac => y(4),
	combout => \RF_rp_rd~3_combout\);

-- Location: LCCOMB_X3_Y29_N14
\Equal18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal18~0_combout\ = ((y(2)) # ((!y(1)) # (!\Equal16~4_combout\))) # (!y(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y(0),
	datab => y(2),
	datac => \Equal16~4_combout\,
	datad => y(1),
	combout => \Equal18~0_combout\);

-- Location: LCCOMB_X3_Y29_N30
\RF_sel~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_sel~0_combout\ = (\RF_W_wr~6_combout\ & (\Equal18~0_combout\ & !\Equal20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RF_W_wr~6_combout\,
	datac => \Equal18~0_combout\,
	datad => \Equal20~0_combout\,
	combout => \RF_sel~0_combout\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(8),
	combout => \IR~combout\(8));

-- Location: LCCOMB_X37_Y35_N10
\RF_W_addr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_W_addr~0_combout\ = (\IR~combout\(8) & ((\Equal20~0_combout\) # (!\RF_W_wr~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal20~0_combout\,
	datac => \RF_W_wr~6_combout\,
	datad => \IR~combout\(8),
	combout => \RF_W_addr~0_combout\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(9),
	combout => \IR~combout\(9));

-- Location: LCCOMB_X29_Y35_N12
\RF_W_addr~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_W_addr~1_combout\ = (\IR~combout\(9) & ((\Equal20~0_combout\) # (!\RF_W_wr~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal20~0_combout\,
	datac => \RF_W_wr~6_combout\,
	datad => \IR~combout\(9),
	combout => \RF_W_addr~1_combout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(10),
	combout => \IR~combout\(10));

-- Location: LCCOMB_X37_Y35_N24
\RF_W_addr~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_W_addr~2_combout\ = (\IR~combout\(10) & ((\Equal20~0_combout\) # (!\RF_W_wr~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal20~0_combout\,
	datac => \RF_W_wr~6_combout\,
	datad => \IR~combout\(10),
	combout => \RF_W_addr~2_combout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(11),
	combout => \IR~combout\(11));

-- Location: LCCOMB_X29_Y35_N2
\RF_W_addr~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_W_addr~3_combout\ = (\IR~combout\(11) & ((\Equal20~0_combout\) # (!\RF_W_wr~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal20~0_combout\,
	datac => \RF_W_wr~6_combout\,
	datad => \IR~combout\(11),
	combout => \RF_W_addr~3_combout\);

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(4),
	combout => \IR~combout\(4));

-- Location: LCCOMB_X45_Y35_N12
\RF_rp_addr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_rp_addr~0_combout\ = (\IR~combout\(4) & \RF_rp_rd~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(4),
	datac => \RF_rp_rd~3_combout\,
	combout => \RF_rp_addr~0_combout\);

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(5),
	combout => \IR~combout\(5));

-- Location: LCCOMB_X45_Y35_N30
\RF_rp_addr~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_rp_addr~1_combout\ = (\IR~combout\(5) & \RF_rp_rd~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(5),
	datac => \RF_rp_rd~3_combout\,
	combout => \RF_rp_addr~1_combout\);

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(6),
	combout => \IR~combout\(6));

-- Location: LCCOMB_X45_Y35_N24
\RF_rp_addr~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_rp_addr~2_combout\ = (\RF_rp_rd~3_combout\ & \IR~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RF_rp_rd~3_combout\,
	datad => \IR~combout\(6),
	combout => \RF_rp_addr~2_combout\);

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(7),
	combout => \IR~combout\(7));

-- Location: LCCOMB_X45_Y35_N26
\RF_rp_addr~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_rp_addr~3_combout\ = (\RF_rp_rd~3_combout\ & \IR~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RF_rp_rd~3_combout\,
	datac => \IR~combout\(7),
	combout => \RF_rp_addr~3_combout\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(0),
	combout => \IR~combout\(0));

-- Location: LCCOMB_X37_Y35_N18
\RF_rq_addr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_rq_addr~0_combout\ = (!\RF_W_wr~6_combout\ & \IR~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RF_W_wr~6_combout\,
	datad => \IR~combout\(0),
	combout => \RF_rq_addr~0_combout\);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(1),
	combout => \IR~combout\(1));

-- Location: LCCOMB_X37_Y35_N0
\RF_rq_addr~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_rq_addr~1_combout\ = (!\RF_W_wr~6_combout\ & \IR~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RF_W_wr~6_combout\,
	datad => \IR~combout\(1),
	combout => \RF_rq_addr~1_combout\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(2),
	combout => \IR~combout\(2));

-- Location: LCCOMB_X37_Y35_N22
\RF_rq_addr~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_rq_addr~2_combout\ = (!\RF_W_wr~6_combout\ & \IR~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RF_W_wr~6_combout\,
	datad => \IR~combout\(2),
	combout => \RF_rq_addr~2_combout\);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR(3),
	combout => \IR~combout\(3));

-- Location: LCCOMB_X37_Y35_N12
\RF_rq_addr~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_rq_addr~3_combout\ = (!\RF_W_wr~6_combout\ & \IR~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RF_W_wr~6_combout\,
	datad => \IR~combout\(3),
	combout => \RF_rq_addr~3_combout\);

-- Location: LCCOMB_X1_Y29_N26
\sel_ula~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \sel_ula~3_combout\ = (y(2) & ((y(3) & ((!y(1)) # (!y(0)))) # (!y(3) & (y(0))))) # (!y(2) & (y(3) & ((y(0)) # (y(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y(2),
	datab => y(3),
	datac => y(0),
	datad => y(1),
	combout => \sel_ula~3_combout\);

-- Location: LCCOMB_X1_Y29_N4
\sel_ula~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \sel_ula~24_combout\ = (\IR~combout\(12) & (!y(4) & \sel_ula~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(12),
	datac => y(4),
	datad => \sel_ula~3_combout\,
	combout => \sel_ula~24_combout\);

-- Location: LCCOMB_X1_Y29_N30
\sel_ula~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \sel_ula~25_combout\ = (\IR~combout\(13) & (!y(4) & \sel_ula~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(13),
	datac => y(4),
	datad => \sel_ula~3_combout\,
	combout => \sel_ula~25_combout\);

-- Location: LCCOMB_X1_Y29_N8
\sel_ula~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \sel_ula~26_combout\ = (\IR~combout\(14) & (!y(4) & \sel_ula~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR~combout\(14),
	datac => y(4),
	datad => \sel_ula~3_combout\,
	combout => \sel_ula~26_combout\);

-- Location: LCCOMB_X1_Y29_N10
\sel_ula~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \sel_ula~27_combout\ = (\IR~combout\(15) & (!y(4) & \sel_ula~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(15),
	datac => y(4),
	datad => \sel_ula~3_combout\,
	combout => \sel_ula~27_combout\);

-- Location: LCCOMB_X3_Y29_N26
\disp1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp1~1_combout\ = (y(4) & (((\Equal30~0_combout\ & !y(1))))) # (!y(4) & (\disp1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp1~0_combout\,
	datab => \Equal30~0_combout\,
	datac => y(4),
	datad => y(1),
	combout => \disp1~1_combout\);

-- Location: LCCOMB_X1_Y29_N22
\disp1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp1~2_combout\ = (\Mux0~0_combout\ & (((\IR~combout\(12) & \disp1~1_combout\)) # (!y(4)))) # (!\Mux0~0_combout\ & (\IR~combout\(12) & ((\disp1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \IR~combout\(12),
	datac => y(4),
	datad => \disp1~1_combout\,
	combout => \disp1~2_combout\);

-- Location: LCCOMB_X1_Y29_N28
\disp1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp1~3_combout\ = (\IR~combout\(13) & \disp1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(13),
	datad => \disp1~1_combout\,
	combout => \disp1~3_combout\);

-- Location: LCCOMB_X1_Y29_N14
\disp1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp1~4_combout\ = (\Mux0~0_combout\ & (((\IR~combout\(14) & \disp1~1_combout\)) # (!y(4)))) # (!\Mux0~0_combout\ & (\IR~combout\(14) & ((\disp1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \IR~combout\(14),
	datac => y(4),
	datad => \disp1~1_combout\,
	combout => \disp1~4_combout\);

-- Location: LCCOMB_X1_Y29_N24
\disp1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp1~5_combout\ = (\Mux0~0_combout\ & (((\disp1~1_combout\ & \IR~combout\(15))) # (!y(4)))) # (!\Mux0~0_combout\ & (\disp1~1_combout\ & ((\IR~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \disp1~1_combout\,
	datac => y(4),
	datad => \IR~combout\(15),
	combout => \disp1~5_combout\);

-- Location: LCCOMB_X3_Y29_N4
\D_addr~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \D_addr~3_combout\ = (y(1) & (y(0) & (y(2) $ (!y(3))))) # (!y(1) & (!y(0) & (y(2) $ (y(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y(2),
	datab => y(1),
	datac => y(3),
	datad => y(0),
	combout => \D_addr~3_combout\);

-- Location: LCCOMB_X45_Y35_N4
\D_addr~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \D_addr~48_combout\ = (!y(4) & (\D_addr~3_combout\ & \IR~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y(4),
	datab => \D_addr~3_combout\,
	datad => \IR~combout\(0),
	combout => \D_addr~48_combout\);

-- Location: LCCOMB_X45_Y35_N6
\D_addr~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \D_addr~49_combout\ = (!y(4) & (\D_addr~3_combout\ & \IR~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y(4),
	datab => \D_addr~3_combout\,
	datad => \IR~combout\(1),
	combout => \D_addr~49_combout\);

-- Location: LCCOMB_X45_Y35_N16
\D_addr~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \D_addr~50_combout\ = (!y(4) & (\D_addr~3_combout\ & \IR~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y(4),
	datab => \D_addr~3_combout\,
	datad => \IR~combout\(2),
	combout => \D_addr~50_combout\);

-- Location: LCCOMB_X45_Y35_N22
\D_addr~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \D_addr~51_combout\ = (\IR~combout\(3) & (\D_addr~3_combout\ & !y(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(3),
	datab => \D_addr~3_combout\,
	datad => y(4),
	combout => \D_addr~51_combout\);

-- Location: LCCOMB_X45_Y35_N0
\D_addr~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \D_addr~52_combout\ = (\IR~combout\(4) & (\D_addr~3_combout\ & !y(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(4),
	datab => \D_addr~3_combout\,
	datad => y(4),
	combout => \D_addr~52_combout\);

-- Location: LCCOMB_X45_Y35_N18
\D_addr~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \D_addr~53_combout\ = (\IR~combout\(5) & (\D_addr~3_combout\ & !y(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(5),
	datab => \D_addr~3_combout\,
	datad => y(4),
	combout => \D_addr~53_combout\);

-- Location: LCCOMB_X45_Y35_N28
\D_addr~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \D_addr~54_combout\ = (!y(4) & (\D_addr~3_combout\ & \IR~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y(4),
	datab => \D_addr~3_combout\,
	datad => \IR~combout\(6),
	combout => \D_addr~54_combout\);

-- Location: LCCOMB_X45_Y35_N2
\D_addr~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \D_addr~55_combout\ = (\IR~combout\(7) & (\D_addr~3_combout\ & !y(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(7),
	datac => \D_addr~3_combout\,
	datad => y(4),
	combout => \D_addr~55_combout\);

-- Location: LCCOMB_X37_Y35_N2
\RF_W_data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_W_data~0_combout\ = (\Equal20~0_combout\ & \IR~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal20~0_combout\,
	datad => \IR~combout\(0),
	combout => \RF_W_data~0_combout\);

-- Location: LCCOMB_X45_Y35_N20
\RF_W_data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_W_data~1_combout\ = (\Equal20~0_combout\ & \IR~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal20~0_combout\,
	datad => \IR~combout\(1),
	combout => \RF_W_data~1_combout\);

-- Location: LCCOMB_X37_Y35_N8
\RF_W_data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_W_data~2_combout\ = (\Equal20~0_combout\ & \IR~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal20~0_combout\,
	datad => \IR~combout\(2),
	combout => \RF_W_data~2_combout\);

-- Location: LCCOMB_X37_Y35_N26
\RF_W_data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_W_data~3_combout\ = (\Equal20~0_combout\ & \IR~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal20~0_combout\,
	datad => \IR~combout\(3),
	combout => \RF_W_data~3_combout\);

-- Location: LCCOMB_X37_Y35_N16
\RF_W_data~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_W_data~4_combout\ = (\Equal20~0_combout\ & \IR~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal20~0_combout\,
	datad => \IR~combout\(4),
	combout => \RF_W_data~4_combout\);

-- Location: LCCOMB_X45_Y35_N14
\RF_W_data~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_W_data~5_combout\ = (\IR~combout\(5) & \Equal20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(5),
	datac => \Equal20~0_combout\,
	combout => \RF_W_data~5_combout\);

-- Location: LCCOMB_X45_Y35_N8
\RF_W_data~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_W_data~6_combout\ = (\Equal20~0_combout\ & \IR~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal20~0_combout\,
	datad => \IR~combout\(6),
	combout => \RF_W_data~6_combout\);

-- Location: LCCOMB_X45_Y35_N10
\RF_W_data~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF_W_data~7_combout\ = (\Equal20~0_combout\ & \IR~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal20~0_combout\,
	datac => \IR~combout\(7),
	combout => \RF_W_data~7_combout\);

-- Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ld_PC~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ld_PC);

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clr_PC~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clr_PC);

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\inc_PC~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Equal16~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_inc_PC);

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rd_I~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Equal16~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rd_I);

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ld_IR~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Equal16~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ld_IR);

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_rw~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Equal29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_rw);

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SelMUX_mem~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Equal30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SelMUX_mem);

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RF_W_wr~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RF_W_wr~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RF_W_wr);

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RF_rp_rd~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RF_rp_rd~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RF_rp_rd);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RF_rq_rd~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_RF_W_wr~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RF_rq_rd);

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RF_sel[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_RF_W_wr~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RF_sel(0));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RF_sel[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RF_sel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RF_sel(1));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RF_W_addr[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RF_W_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RF_W_addr(0));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RF_W_addr[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RF_W_addr~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RF_W_addr(1));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RF_W_addr[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RF_W_addr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RF_W_addr(2));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RF_W_addr[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RF_W_addr~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RF_W_addr(3));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RF_rp_addr[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RF_rp_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RF_rp_addr(0));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RF_rp_addr[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RF_rp_addr~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RF_rp_addr(1));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RF_rp_addr[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RF_rp_addr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RF_rp_addr(2));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RF_rp_addr[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RF_rp_addr~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RF_rp_addr(3));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RF_rq_addr[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RF_rq_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RF_rq_addr(0));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RF_rq_addr[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RF_rq_addr~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RF_rq_addr(1));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RF_rq_addr[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RF_rq_addr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RF_rq_addr(2));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RF_rq_addr[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RF_rq_addr~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RF_rq_addr(3));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sel_ula[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sel_ula~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sel_ula(0));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sel_ula[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sel_ula~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sel_ula(1));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sel_ula[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sel_ula~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sel_ula(2));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sel_ula[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sel_ula~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sel_ula(3));

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \disp1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(0));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \disp1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(1));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \disp1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(2));

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \disp1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(3));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_addr[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D_addr~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_addr(0));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_addr[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D_addr~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_addr(1));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_addr[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D_addr~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_addr(2));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_addr[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D_addr~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_addr(3));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_addr[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D_addr~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_addr(4));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_addr[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D_addr~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_addr(5));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_addr[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D_addr~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_addr(6));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_addr[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D_addr~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_addr(7));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RF_W_data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RF_W_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RF_W_data(0));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RF_W_data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RF_W_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RF_W_data(1));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RF_W_data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RF_W_data~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RF_W_data(2));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RF_W_data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RF_W_data~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RF_W_data(3));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RF_W_data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RF_W_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RF_W_data(4));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RF_W_data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RF_W_data~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RF_W_data(5));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RF_W_data[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RF_W_data~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RF_W_data(6));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RF_W_data[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RF_W_data~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RF_W_data(7));
END structure;


