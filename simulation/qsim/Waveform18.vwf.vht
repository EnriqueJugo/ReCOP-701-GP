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
-- Generated on "04/27/2025 22:35:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          instruction_register
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY instruction_register_vhd_vec_tst IS
END instruction_register_vhd_vec_tst;
ARCHITECTURE instruction_register_arch OF instruction_register_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr_mode : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL ir_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ir_ld : STD_LOGIC;
SIGNAL opcode : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL operand : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL rx : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rz : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT instruction_register
	PORT (
	addr_mode : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	clk : IN STD_LOGIC;
	ir_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	ir_ld : IN STD_LOGIC;
	opcode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	operand : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	reset : IN STD_LOGIC;
	rx : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	rz : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : instruction_register
	PORT MAP (
-- list connections between master ports and signals
	addr_mode => addr_mode,
	clk => clk,
	ir_data => ir_data,
	ir_ld => ir_ld,
	opcode => opcode,
	operand => operand,
	reset => reset,
	rx => rx,
	rz => rz
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- ir_data[31]
t_prcs_ir_data_31: PROCESS
BEGIN
	ir_data(31) <= '1';
	WAIT FOR 60000 ps;
	ir_data(31) <= '0';
	WAIT FOR 30000 ps;
	ir_data(31) <= '1';
	WAIT FOR 90000 ps;
	ir_data(31) <= '0';
	WAIT FOR 60000 ps;
	ir_data(31) <= '1';
	WAIT FOR 90000 ps;
	ir_data(31) <= '0';
	WAIT FOR 30000 ps;
	ir_data(31) <= '1';
	WAIT FOR 30000 ps;
	ir_data(31) <= '0';
	WAIT FOR 30000 ps;
	ir_data(31) <= '1';
	WAIT FOR 60000 ps;
	ir_data(31) <= '0';
	WAIT FOR 90000 ps;
	ir_data(31) <= '1';
	WAIT FOR 60000 ps;
	ir_data(31) <= '0';
	WAIT FOR 270000 ps;
	ir_data(31) <= '1';
	WAIT FOR 90000 ps;
	ir_data(31) <= '0';
WAIT;
END PROCESS t_prcs_ir_data_31;
-- ir_data[30]
t_prcs_ir_data_30: PROCESS
BEGIN
	ir_data(30) <= '1';
	WAIT FOR 60000 ps;
	ir_data(30) <= '0';
	WAIT FOR 90000 ps;
	ir_data(30) <= '1';
	WAIT FOR 30000 ps;
	ir_data(30) <= '0';
	WAIT FOR 120000 ps;
	ir_data(30) <= '1';
	WAIT FOR 60000 ps;
	ir_data(30) <= '0';
	WAIT FOR 30000 ps;
	ir_data(30) <= '1';
	WAIT FOR 120000 ps;
	ir_data(30) <= '0';
	WAIT FOR 90000 ps;
	ir_data(30) <= '1';
	WAIT FOR 150000 ps;
	ir_data(30) <= '0';
	WAIT FOR 120000 ps;
	ir_data(30) <= '1';
	WAIT FOR 30000 ps;
	ir_data(30) <= '0';
	WAIT FOR 60000 ps;
	ir_data(30) <= '1';
	WAIT FOR 30000 ps;
	ir_data(30) <= '0';
WAIT;
END PROCESS t_prcs_ir_data_30;
-- ir_data[29]
t_prcs_ir_data_29: PROCESS
BEGIN
	ir_data(29) <= '1';
	WAIT FOR 30000 ps;
	ir_data(29) <= '0';
	WAIT FOR 30000 ps;
	ir_data(29) <= '1';
	WAIT FOR 90000 ps;
	ir_data(29) <= '0';
	WAIT FOR 240000 ps;
	ir_data(29) <= '1';
	WAIT FOR 30000 ps;
	ir_data(29) <= '0';
	WAIT FOR 60000 ps;
	ir_data(29) <= '1';
	WAIT FOR 90000 ps;
	ir_data(29) <= '0';
	WAIT FOR 30000 ps;
	ir_data(29) <= '1';
	WAIT FOR 30000 ps;
	ir_data(29) <= '0';
	WAIT FOR 60000 ps;
	ir_data(29) <= '1';
	WAIT FOR 30000 ps;
	ir_data(29) <= '0';
	WAIT FOR 90000 ps;
	ir_data(29) <= '1';
	WAIT FOR 30000 ps;
	ir_data(29) <= '0';
	WAIT FOR 30000 ps;
	ir_data(29) <= '1';
	WAIT FOR 60000 ps;
	ir_data(29) <= '0';
WAIT;
END PROCESS t_prcs_ir_data_29;
-- ir_data[28]
t_prcs_ir_data_28: PROCESS
BEGIN
	ir_data(28) <= '1';
	WAIT FOR 30000 ps;
	ir_data(28) <= '0';
	WAIT FOR 30000 ps;
	ir_data(28) <= '1';
	WAIT FOR 150000 ps;
	ir_data(28) <= '0';
	WAIT FOR 150000 ps;
	ir_data(28) <= '1';
	WAIT FOR 30000 ps;
	ir_data(28) <= '0';
	WAIT FOR 30000 ps;
	ir_data(28) <= '1';
	WAIT FOR 60000 ps;
	ir_data(28) <= '0';
	WAIT FOR 120000 ps;
	ir_data(28) <= '1';
	WAIT FOR 90000 ps;
	ir_data(28) <= '0';
	WAIT FOR 30000 ps;
	ir_data(28) <= '1';
	WAIT FOR 120000 ps;
	ir_data(28) <= '0';
	WAIT FOR 120000 ps;
	ir_data(28) <= '1';
WAIT;
END PROCESS t_prcs_ir_data_28;
-- ir_data[27]
t_prcs_ir_data_27: PROCESS
BEGIN
	ir_data(27) <= '0';
	WAIT FOR 30000 ps;
	ir_data(27) <= '1';
	WAIT FOR 30000 ps;
	ir_data(27) <= '0';
	WAIT FOR 120000 ps;
	ir_data(27) <= '1';
	WAIT FOR 30000 ps;
	ir_data(27) <= '0';
	WAIT FOR 30000 ps;
	ir_data(27) <= '1';
	WAIT FOR 30000 ps;
	ir_data(27) <= '0';
	WAIT FOR 30000 ps;
	ir_data(27) <= '1';
	WAIT FOR 30000 ps;
	ir_data(27) <= '0';
	WAIT FOR 120000 ps;
	ir_data(27) <= '1';
	WAIT FOR 30000 ps;
	ir_data(27) <= '0';
	WAIT FOR 30000 ps;
	ir_data(27) <= '1';
	WAIT FOR 30000 ps;
	ir_data(27) <= '0';
	WAIT FOR 30000 ps;
	ir_data(27) <= '1';
	WAIT FOR 90000 ps;
	ir_data(27) <= '0';
	WAIT FOR 30000 ps;
	ir_data(27) <= '1';
	WAIT FOR 60000 ps;
	ir_data(27) <= '0';
	WAIT FOR 30000 ps;
	ir_data(27) <= '1';
	WAIT FOR 90000 ps;
	ir_data(27) <= '0';
	WAIT FOR 30000 ps;
	ir_data(27) <= '1';
	WAIT FOR 30000 ps;
	ir_data(27) <= '0';
	WAIT FOR 30000 ps;
	ir_data(27) <= '1';
	WAIT FOR 30000 ps;
	ir_data(27) <= '0';
WAIT;
END PROCESS t_prcs_ir_data_27;
-- ir_data[26]
t_prcs_ir_data_26: PROCESS
BEGIN
	ir_data(26) <= '0';
	WAIT FOR 150000 ps;
	ir_data(26) <= '1';
	WAIT FOR 60000 ps;
	ir_data(26) <= '0';
	WAIT FOR 60000 ps;
	ir_data(26) <= '1';
	WAIT FOR 30000 ps;
	ir_data(26) <= '0';
	WAIT FOR 120000 ps;
	ir_data(26) <= '1';
	WAIT FOR 60000 ps;
	ir_data(26) <= '0';
	WAIT FOR 60000 ps;
	ir_data(26) <= '1';
	WAIT FOR 120000 ps;
	ir_data(26) <= '0';
	WAIT FOR 30000 ps;
	ir_data(26) <= '1';
	WAIT FOR 60000 ps;
	ir_data(26) <= '0';
	WAIT FOR 30000 ps;
	ir_data(26) <= '1';
	WAIT FOR 90000 ps;
	ir_data(26) <= '0';
	WAIT FOR 30000 ps;
	ir_data(26) <= '1';
	WAIT FOR 30000 ps;
	ir_data(26) <= '0';
	WAIT FOR 60000 ps;
	ir_data(26) <= '1';
WAIT;
END PROCESS t_prcs_ir_data_26;
-- ir_data[25]
t_prcs_ir_data_25: PROCESS
BEGIN
	ir_data(25) <= '1';
	WAIT FOR 30000 ps;
	ir_data(25) <= '0';
	WAIT FOR 60000 ps;
	ir_data(25) <= '1';
	WAIT FOR 30000 ps;
	ir_data(25) <= '0';
	WAIT FOR 60000 ps;
	ir_data(25) <= '1';
	WAIT FOR 30000 ps;
	ir_data(25) <= '0';
	WAIT FOR 180000 ps;
	ir_data(25) <= '1';
	WAIT FOR 120000 ps;
	ir_data(25) <= '0';
	WAIT FOR 30000 ps;
	ir_data(25) <= '1';
	WAIT FOR 60000 ps;
	ir_data(25) <= '0';
	WAIT FOR 30000 ps;
	ir_data(25) <= '1';
	WAIT FOR 30000 ps;
	ir_data(25) <= '0';
	WAIT FOR 30000 ps;
	ir_data(25) <= '1';
	WAIT FOR 60000 ps;
	ir_data(25) <= '0';
	WAIT FOR 150000 ps;
	ir_data(25) <= '1';
	WAIT FOR 60000 ps;
	ir_data(25) <= '0';
WAIT;
END PROCESS t_prcs_ir_data_25;
-- ir_data[24]
t_prcs_ir_data_24: PROCESS
BEGIN
	ir_data(24) <= '1';
	WAIT FOR 60000 ps;
	ir_data(24) <= '0';
	WAIT FOR 30000 ps;
	ir_data(24) <= '1';
	WAIT FOR 60000 ps;
	ir_data(24) <= '0';
	WAIT FOR 60000 ps;
	ir_data(24) <= '1';
	WAIT FOR 150000 ps;
	ir_data(24) <= '0';
	WAIT FOR 120000 ps;
	ir_data(24) <= '1';
	WAIT FOR 30000 ps;
	ir_data(24) <= '0';
	WAIT FOR 30000 ps;
	ir_data(24) <= '1';
	WAIT FOR 30000 ps;
	ir_data(24) <= '0';
	WAIT FOR 30000 ps;
	ir_data(24) <= '1';
	WAIT FOR 150000 ps;
	ir_data(24) <= '0';
	WAIT FOR 30000 ps;
	ir_data(24) <= '1';
	WAIT FOR 60000 ps;
	ir_data(24) <= '0';
	WAIT FOR 60000 ps;
	ir_data(24) <= '1';
	WAIT FOR 30000 ps;
	ir_data(24) <= '0';
	WAIT FOR 30000 ps;
	ir_data(24) <= '1';
	WAIT FOR 30000 ps;
	ir_data(24) <= '0';
WAIT;
END PROCESS t_prcs_ir_data_24;
-- ir_data[23]
t_prcs_ir_data_23: PROCESS
BEGIN
	ir_data(23) <= '0';
	WAIT FOR 30000 ps;
	ir_data(23) <= '1';
	WAIT FOR 90000 ps;
	ir_data(23) <= '0';
	WAIT FOR 30000 ps;
	ir_data(23) <= '1';
	WAIT FOR 90000 ps;
	ir_data(23) <= '0';
	WAIT FOR 60000 ps;
	ir_data(23) <= '1';
	WAIT FOR 60000 ps;
	ir_data(23) <= '0';
	WAIT FOR 90000 ps;
	ir_data(23) <= '1';
	WAIT FOR 30000 ps;
	ir_data(23) <= '0';
	WAIT FOR 210000 ps;
	ir_data(23) <= '1';
	WAIT FOR 30000 ps;
	ir_data(23) <= '0';
	WAIT FOR 30000 ps;
	ir_data(23) <= '1';
	WAIT FOR 30000 ps;
	ir_data(23) <= '0';
	WAIT FOR 120000 ps;
	ir_data(23) <= '1';
	WAIT FOR 30000 ps;
	ir_data(23) <= '0';
	WAIT FOR 30000 ps;
	ir_data(23) <= '1';
	WAIT FOR 30000 ps;
	ir_data(23) <= '0';
WAIT;
END PROCESS t_prcs_ir_data_23;
-- ir_data[22]
t_prcs_ir_data_22: PROCESS
BEGIN
	ir_data(22) <= '0';
	WAIT FOR 30000 ps;
	ir_data(22) <= '1';
	WAIT FOR 30000 ps;
	ir_data(22) <= '0';
	WAIT FOR 90000 ps;
	ir_data(22) <= '1';
	WAIT FOR 60000 ps;
	ir_data(22) <= '0';
	WAIT FOR 60000 ps;
	ir_data(22) <= '1';
	WAIT FOR 150000 ps;
	ir_data(22) <= '0';
	WAIT FOR 90000 ps;
	ir_data(22) <= '1';
	WAIT FOR 60000 ps;
	ir_data(22) <= '0';
	WAIT FOR 90000 ps;
	ir_data(22) <= '1';
	WAIT FOR 30000 ps;
	ir_data(22) <= '0';
	WAIT FOR 30000 ps;
	ir_data(22) <= '1';
	WAIT FOR 60000 ps;
	ir_data(22) <= '0';
	WAIT FOR 60000 ps;
	ir_data(22) <= '1';
	WAIT FOR 150000 ps;
	ir_data(22) <= '0';
WAIT;
END PROCESS t_prcs_ir_data_22;
-- ir_data[21]
t_prcs_ir_data_21: PROCESS
BEGIN
	ir_data(21) <= '0';
	WAIT FOR 30000 ps;
	ir_data(21) <= '1';
	WAIT FOR 60000 ps;
	ir_data(21) <= '0';
	WAIT FOR 60000 ps;
	ir_data(21) <= '1';
	WAIT FOR 30000 ps;
	ir_data(21) <= '0';
	WAIT FOR 30000 ps;
	ir_data(21) <= '1';
	WAIT FOR 30000 ps;
	ir_data(21) <= '0';
	WAIT FOR 30000 ps;
	ir_data(21) <= '1';
	WAIT FOR 60000 ps;
	ir_data(21) <= '0';
	WAIT FOR 30000 ps;
	ir_data(21) <= '1';
	WAIT FOR 30000 ps;
	ir_data(21) <= '0';
	WAIT FOR 30000 ps;
	ir_data(21) <= '1';
	WAIT FOR 60000 ps;
	ir_data(21) <= '0';
	WAIT FOR 30000 ps;
	ir_data(21) <= '1';
	WAIT FOR 60000 ps;
	ir_data(21) <= '0';
	WAIT FOR 60000 ps;
	ir_data(21) <= '1';
	WAIT FOR 30000 ps;
	ir_data(21) <= '0';
	WAIT FOR 30000 ps;
	ir_data(21) <= '1';
	WAIT FOR 30000 ps;
	ir_data(21) <= '0';
	WAIT FOR 120000 ps;
	ir_data(21) <= '1';
	WAIT FOR 30000 ps;
	ir_data(21) <= '0';
	WAIT FOR 30000 ps;
	ir_data(21) <= '1';
	WAIT FOR 30000 ps;
	ir_data(21) <= '0';
	WAIT FOR 30000 ps;
	ir_data(21) <= '1';
	WAIT FOR 30000 ps;
	ir_data(21) <= '0';
WAIT;
END PROCESS t_prcs_ir_data_21;
-- ir_data[20]
t_prcs_ir_data_20: PROCESS
BEGIN
	ir_data(20) <= '1';
	WAIT FOR 90000 ps;
	ir_data(20) <= '0';
	WAIT FOR 90000 ps;
	ir_data(20) <= '1';
	WAIT FOR 30000 ps;
	ir_data(20) <= '0';
	WAIT FOR 30000 ps;
	ir_data(20) <= '1';
	WAIT FOR 60000 ps;
	ir_data(20) <= '0';
	WAIT FOR 150000 ps;
	ir_data(20) <= '1';
	WAIT FOR 30000 ps;
	ir_data(20) <= '0';
	WAIT FOR 30000 ps;
	ir_data(20) <= '1';
	WAIT FOR 30000 ps;
	ir_data(20) <= '0';
	WAIT FOR 60000 ps;
	ir_data(20) <= '1';
	WAIT FOR 30000 ps;
	ir_data(20) <= '0';
	WAIT FOR 90000 ps;
	ir_data(20) <= '1';
	WAIT FOR 30000 ps;
	ir_data(20) <= '0';
	WAIT FOR 30000 ps;
	ir_data(20) <= '1';
	WAIT FOR 30000 ps;
	ir_data(20) <= '0';
	WAIT FOR 60000 ps;
	ir_data(20) <= '1';
	WAIT FOR 90000 ps;
	ir_data(20) <= '0';
WAIT;
END PROCESS t_prcs_ir_data_20;
-- ir_data[19]
t_prcs_ir_data_19: PROCESS
BEGIN
	ir_data(19) <= '0';
	WAIT FOR 30000 ps;
	ir_data(19) <= '1';
	WAIT FOR 30000 ps;
	ir_data(19) <= '0';
	WAIT FOR 30000 ps;
	ir_data(19) <= '1';
	WAIT FOR 60000 ps;
	ir_data(19) <= '0';
	WAIT FOR 30000 ps;
	ir_data(19) <= '1';
	WAIT FOR 90000 ps;
	ir_data(19) <= '0';
	WAIT FOR 60000 ps;
	ir_data(19) <= '1';
	WAIT FOR 60000 ps;
	ir_data(19) <= '0';
	WAIT FOR 30000 ps;
	ir_data(19) <= '1';
	WAIT FOR 120000 ps;
	ir_data(19) <= '0';
	WAIT FOR 60000 ps;
	ir_data(19) <= '1';
	WAIT FOR 30000 ps;
	ir_data(19) <= '0';
	WAIT FOR 30000 ps;
	ir_data(19) <= '1';
	WAIT FOR 30000 ps;
	ir_data(19) <= '0';
	WAIT FOR 30000 ps;
	ir_data(19) <= '1';
	WAIT FOR 90000 ps;
	ir_data(19) <= '0';
	WAIT FOR 30000 ps;
	ir_data(19) <= '1';
	WAIT FOR 60000 ps;
	ir_data(19) <= '0';
	WAIT FOR 30000 ps;
	ir_data(19) <= '1';
	WAIT FOR 30000 ps;
	ir_data(19) <= '0';
WAIT;
END PROCESS t_prcs_ir_data_19;
-- ir_data[18]
t_prcs_ir_data_18: PROCESS
BEGIN
	ir_data(18) <= '0';
	WAIT FOR 210000 ps;
	ir_data(18) <= '1';
	WAIT FOR 30000 ps;
	ir_data(18) <= '0';
	WAIT FOR 90000 ps;
	ir_data(18) <= '1';
	WAIT FOR 90000 ps;
	ir_data(18) <= '0';
	WAIT FOR 120000 ps;
	ir_data(18) <= '1';
	WAIT FOR 180000 ps;
	ir_data(18) <= '0';
	WAIT FOR 60000 ps;
	ir_data(18) <= '1';
	WAIT FOR 30000 ps;
	ir_data(18) <= '0';
	WAIT FOR 90000 ps;
	ir_data(18) <= '1';
	WAIT FOR 30000 ps;
	ir_data(18) <= '0';
	WAIT FOR 30000 ps;
	ir_data(18) <= '1';
WAIT;
END PROCESS t_prcs_ir_data_18;
-- ir_data[17]
t_prcs_ir_data_17: PROCESS
BEGIN
	ir_data(17) <= '1';
	WAIT FOR 30000 ps;
	ir_data(17) <= '0';
	WAIT FOR 30000 ps;
	ir_data(17) <= '1';
	WAIT FOR 30000 ps;
	ir_data(17) <= '0';
	WAIT FOR 30000 ps;
	ir_data(17) <= '1';
	WAIT FOR 30000 ps;
	ir_data(17) <= '0';
	WAIT FOR 30000 ps;
	ir_data(17) <= '1';
	WAIT FOR 30000 ps;
	ir_data(17) <= '0';
	WAIT FOR 30000 ps;
	ir_data(17) <= '1';
	WAIT FOR 90000 ps;
	ir_data(17) <= '0';
	WAIT FOR 30000 ps;
	ir_data(17) <= '1';
	WAIT FOR 30000 ps;
	ir_data(17) <= '0';
	WAIT FOR 60000 ps;
	ir_data(17) <= '1';
	WAIT FOR 30000 ps;
	ir_data(17) <= '0';
	WAIT FOR 60000 ps;
	ir_data(17) <= '1';
	WAIT FOR 150000 ps;
	ir_data(17) <= '0';
	WAIT FOR 60000 ps;
	ir_data(17) <= '1';
	WAIT FOR 30000 ps;
	ir_data(17) <= '0';
	WAIT FOR 120000 ps;
	ir_data(17) <= '1';
	WAIT FOR 60000 ps;
	ir_data(17) <= '0';
WAIT;
END PROCESS t_prcs_ir_data_17;
-- ir_data[16]
t_prcs_ir_data_16: PROCESS
BEGIN
	ir_data(16) <= '1';
	WAIT FOR 30000 ps;
	ir_data(16) <= '0';
	WAIT FOR 60000 ps;
	ir_data(16) <= '1';
	WAIT FOR 60000 ps;
	ir_data(16) <= '0';
	WAIT FOR 90000 ps;
	ir_data(16) <= '1';
	WAIT FOR 30000 ps;
	ir_data(16) <= '0';
	WAIT FOR 30000 ps;
	ir_data(16) <= '1';
	WAIT FOR 30000 ps;
	ir_data(16) <= '0';
	WAIT FOR 120000 ps;
	ir_data(16) <= '1';
	WAIT FOR 30000 ps;
	ir_data(16) <= '0';
	WAIT FOR 90000 ps;
	ir_data(16) <= '1';
	WAIT FOR 60000 ps;
	ir_data(16) <= '0';
	WAIT FOR 90000 ps;
	ir_data(16) <= '1';
	WAIT FOR 60000 ps;
	ir_data(16) <= '0';
	WAIT FOR 30000 ps;
	ir_data(16) <= '1';
WAIT;
END PROCESS t_prcs_ir_data_16;
-- ir_data[15]
t_prcs_ir_data_15: PROCESS
BEGIN
	ir_data(15) <= '0';
	WAIT FOR 60000 ps;
	ir_data(15) <= '1';
	WAIT FOR 30000 ps;
	ir_data(15) <= '0';
	WAIT FOR 30000 ps;
	ir_data(15) <= '1';
	WAIT FOR 30000 ps;
	ir_data(15) <= '0';
	WAIT FOR 180000 ps;
	ir_data(15) <= '1';
	WAIT FOR 60000 ps;
	ir_data(15) <= '0';
	WAIT FOR 60000 ps;
	ir_data(15) <= '1';
	WAIT FOR 30000 ps;
	ir_data(15) <= '0';
	WAIT FOR 30000 ps;
	ir_data(15) <= '1';
	WAIT FOR 60000 ps;
	ir_data(15) <= '0';
	WAIT FOR 30000 ps;
	ir_data(15) <= '1';
	WAIT FOR 60000 ps;
	ir_data(15) <= '0';
	WAIT FOR 30000 ps;
	ir_data(15) <= '1';
	WAIT FOR 60000 ps;
	ir_data(15) <= '0';
	WAIT FOR 60000 ps;
	ir_data(15) <= '1';
	WAIT FOR 30000 ps;
	ir_data(15) <= '0';
	WAIT FOR 90000 ps;
	ir_data(15) <= '1';
WAIT;
END PROCESS t_prcs_ir_data_15;
-- ir_data[14]
t_prcs_ir_data_14: PROCESS
BEGIN
	ir_data(14) <= '0';
	WAIT FOR 30000 ps;
	ir_data(14) <= '1';
	WAIT FOR 30000 ps;
	ir_data(14) <= '0';
	WAIT FOR 30000 ps;
	ir_data(14) <= '1';
	WAIT FOR 30000 ps;
	ir_data(14) <= '0';
	WAIT FOR 30000 ps;
	ir_data(14) <= '1';
	WAIT FOR 30000 ps;
	ir_data(14) <= '0';
	WAIT FOR 60000 ps;
	ir_data(14) <= '1';
	WAIT FOR 30000 ps;
	ir_data(14) <= '0';
	WAIT FOR 30000 ps;
	ir_data(14) <= '1';
	WAIT FOR 30000 ps;
	ir_data(14) <= '0';
	WAIT FOR 60000 ps;
	ir_data(14) <= '1';
	WAIT FOR 30000 ps;
	ir_data(14) <= '0';
	WAIT FOR 60000 ps;
	ir_data(14) <= '1';
	WAIT FOR 120000 ps;
	ir_data(14) <= '0';
	WAIT FOR 30000 ps;
	ir_data(14) <= '1';
	WAIT FOR 60000 ps;
	ir_data(14) <= '0';
	WAIT FOR 30000 ps;
	ir_data(14) <= '1';
	WAIT FOR 30000 ps;
	ir_data(14) <= '0';
	WAIT FOR 30000 ps;
	ir_data(14) <= '1';
	WAIT FOR 120000 ps;
	ir_data(14) <= '0';
	WAIT FOR 30000 ps;
	ir_data(14) <= '1';
	WAIT FOR 60000 ps;
	ir_data(14) <= '0';
WAIT;
END PROCESS t_prcs_ir_data_14;
-- ir_data[13]
t_prcs_ir_data_13: PROCESS
BEGIN
	ir_data(13) <= '1';
	WAIT FOR 30000 ps;
	ir_data(13) <= '0';
	WAIT FOR 60000 ps;
	ir_data(13) <= '1';
	WAIT FOR 30000 ps;
	ir_data(13) <= '0';
	WAIT FOR 60000 ps;
	ir_data(13) <= '1';
	WAIT FOR 30000 ps;
	ir_data(13) <= '0';
	WAIT FOR 60000 ps;
	ir_data(13) <= '1';
	WAIT FOR 30000 ps;
	ir_data(13) <= '0';
	WAIT FOR 30000 ps;
	ir_data(13) <= '1';
	WAIT FOR 30000 ps;
	ir_data(13) <= '0';
	WAIT FOR 60000 ps;
	ir_data(13) <= '1';
	WAIT FOR 30000 ps;
	ir_data(13) <= '0';
	WAIT FOR 30000 ps;
	ir_data(13) <= '1';
	WAIT FOR 30000 ps;
	ir_data(13) <= '0';
	WAIT FOR 90000 ps;
	ir_data(13) <= '1';
	WAIT FOR 30000 ps;
	ir_data(13) <= '0';
	WAIT FOR 30000 ps;
	ir_data(13) <= '1';
	WAIT FOR 30000 ps;
	ir_data(13) <= '0';
	WAIT FOR 30000 ps;
	ir_data(13) <= '1';
	WAIT FOR 30000 ps;
	ir_data(13) <= '0';
	WAIT FOR 30000 ps;
	ir_data(13) <= '1';
	WAIT FOR 30000 ps;
	ir_data(13) <= '0';
	WAIT FOR 60000 ps;
	ir_data(13) <= '1';
	WAIT FOR 90000 ps;
	ir_data(13) <= '0';
	WAIT FOR 30000 ps;
	ir_data(13) <= '1';
WAIT;
END PROCESS t_prcs_ir_data_13;
-- ir_data[12]
t_prcs_ir_data_12: PROCESS
BEGIN
	ir_data(12) <= '0';
	WAIT FOR 30000 ps;
	ir_data(12) <= '1';
	WAIT FOR 120000 ps;
	ir_data(12) <= '0';
	WAIT FOR 60000 ps;
	ir_data(12) <= '1';
	WAIT FOR 150000 ps;
	ir_data(12) <= '0';
	WAIT FOR 60000 ps;
	ir_data(12) <= '1';
	WAIT FOR 30000 ps;
	ir_data(12) <= '0';
	WAIT FOR 30000 ps;
	ir_data(12) <= '1';
	WAIT FOR 30000 ps;
	ir_data(12) <= '0';
	WAIT FOR 60000 ps;
	ir_data(12) <= '1';
	WAIT FOR 60000 ps;
	ir_data(12) <= '0';
	WAIT FOR 90000 ps;
	ir_data(12) <= '1';
	WAIT FOR 180000 ps;
	ir_data(12) <= '0';
	WAIT FOR 60000 ps;
	ir_data(12) <= '1';
	WAIT FOR 30000 ps;
	ir_data(12) <= '0';
WAIT;
END PROCESS t_prcs_ir_data_12;
-- ir_data[11]
t_prcs_ir_data_11: PROCESS
BEGIN
	ir_data(11) <= '1';
	WAIT FOR 30000 ps;
	ir_data(11) <= '0';
	WAIT FOR 30000 ps;
	ir_data(11) <= '1';
	WAIT FOR 30000 ps;
	ir_data(11) <= '0';
	WAIT FOR 60000 ps;
	ir_data(11) <= '1';
	WAIT FOR 30000 ps;
	ir_data(11) <= '0';
	WAIT FOR 30000 ps;
	ir_data(11) <= '1';
	WAIT FOR 60000 ps;
	ir_data(11) <= '0';
	WAIT FOR 60000 ps;
	ir_data(11) <= '1';
	WAIT FOR 30000 ps;
	ir_data(11) <= '0';
	WAIT FOR 90000 ps;
	ir_data(11) <= '1';
	WAIT FOR 30000 ps;
	ir_data(11) <= '0';
	WAIT FOR 90000 ps;
	ir_data(11) <= '1';
	WAIT FOR 120000 ps;
	ir_data(11) <= '0';
	WAIT FOR 30000 ps;
	ir_data(11) <= '1';
	WAIT FOR 60000 ps;
	ir_data(11) <= '0';
	WAIT FOR 30000 ps;
	ir_data(11) <= '1';
	WAIT FOR 60000 ps;
	ir_data(11) <= '0';
	WAIT FOR 90000 ps;
	ir_data(11) <= '1';
	WAIT FOR 30000 ps;
	ir_data(11) <= '0';
WAIT;
END PROCESS t_prcs_ir_data_11;
-- ir_data[10]
t_prcs_ir_data_10: PROCESS
BEGIN
	ir_data(10) <= '1';
	WAIT FOR 60000 ps;
	ir_data(10) <= '0';
	WAIT FOR 30000 ps;
	ir_data(10) <= '1';
	WAIT FOR 90000 ps;
	ir_data(10) <= '0';
	WAIT FOR 30000 ps;
	ir_data(10) <= '1';
	WAIT FOR 30000 ps;
	ir_data(10) <= '0';
	WAIT FOR 30000 ps;
	ir_data(10) <= '1';
	WAIT FOR 120000 ps;
	ir_data(10) <= '0';
	WAIT FOR 60000 ps;
	ir_data(10) <= '1';
	WAIT FOR 30000 ps;
	ir_data(10) <= '0';
	WAIT FOR 30000 ps;
	ir_data(10) <= '1';
	WAIT FOR 30000 ps;
	ir_data(10) <= '0';
	WAIT FOR 30000 ps;
	ir_data(10) <= '1';
	WAIT FOR 30000 ps;
	ir_data(10) <= '0';
	WAIT FOR 30000 ps;
	ir_data(10) <= '1';
	WAIT FOR 30000 ps;
	ir_data(10) <= '0';
	WAIT FOR 30000 ps;
	ir_data(10) <= '1';
	WAIT FOR 120000 ps;
	ir_data(10) <= '0';
	WAIT FOR 60000 ps;
	ir_data(10) <= '1';
	WAIT FOR 60000 ps;
	ir_data(10) <= '0';
	WAIT FOR 30000 ps;
	ir_data(10) <= '1';
	WAIT FOR 30000 ps;
	ir_data(10) <= '0';
WAIT;
END PROCESS t_prcs_ir_data_10;
-- ir_data[9]
t_prcs_ir_data_9: PROCESS
BEGIN
	ir_data(9) <= '1';
	WAIT FOR 210000 ps;
	ir_data(9) <= '0';
	WAIT FOR 90000 ps;
	ir_data(9) <= '1';
	WAIT FOR 30000 ps;
	ir_data(9) <= '0';
	WAIT FOR 120000 ps;
	ir_data(9) <= '1';
	WAIT FOR 30000 ps;
	ir_data(9) <= '0';
	WAIT FOR 60000 ps;
	ir_data(9) <= '1';
	WAIT FOR 60000 ps;
	ir_data(9) <= '0';
	WAIT FOR 60000 ps;
	ir_data(9) <= '1';
	WAIT FOR 60000 ps;
	ir_data(9) <= '0';
	WAIT FOR 120000 ps;
	ir_data(9) <= '1';
	WAIT FOR 90000 ps;
	ir_data(9) <= '0';
WAIT;
END PROCESS t_prcs_ir_data_9;
-- ir_data[8]
t_prcs_ir_data_8: PROCESS
BEGIN
	ir_data(8) <= '0';
	WAIT FOR 30000 ps;
	ir_data(8) <= '1';
	WAIT FOR 60000 ps;
	ir_data(8) <= '0';
	WAIT FOR 90000 ps;
	ir_data(8) <= '1';
	WAIT FOR 60000 ps;
	ir_data(8) <= '0';
	WAIT FOR 90000 ps;
	ir_data(8) <= '1';
	WAIT FOR 60000 ps;
	ir_data(8) <= '0';
	WAIT FOR 30000 ps;
	ir_data(8) <= '1';
	WAIT FOR 120000 ps;
	ir_data(8) <= '0';
	WAIT FOR 180000 ps;
	ir_data(8) <= '1';
	WAIT FOR 30000 ps;
	ir_data(8) <= '0';
	WAIT FOR 30000 ps;
	ir_data(8) <= '1';
	WAIT FOR 30000 ps;
	ir_data(8) <= '0';
	WAIT FOR 60000 ps;
	ir_data(8) <= '1';
	WAIT FOR 30000 ps;
	ir_data(8) <= '0';
	WAIT FOR 60000 ps;
	ir_data(8) <= '1';
	WAIT FOR 30000 ps;
	ir_data(8) <= '0';
WAIT;
END PROCESS t_prcs_ir_data_8;
-- ir_data[7]
t_prcs_ir_data_7: PROCESS
BEGIN
	ir_data(7) <= '0';
	WAIT FOR 90000 ps;
	ir_data(7) <= '1';
	WAIT FOR 30000 ps;
	ir_data(7) <= '0';
	WAIT FOR 90000 ps;
	ir_data(7) <= '1';
	WAIT FOR 30000 ps;
	ir_data(7) <= '0';
	WAIT FOR 30000 ps;
	ir_data(7) <= '1';
	WAIT FOR 30000 ps;
	ir_data(7) <= '0';
	WAIT FOR 30000 ps;
	ir_data(7) <= '1';
	WAIT FOR 120000 ps;
	ir_data(7) <= '0';
	WAIT FOR 60000 ps;
	ir_data(7) <= '1';
	WAIT FOR 150000 ps;
	ir_data(7) <= '0';
	WAIT FOR 60000 ps;
	ir_data(7) <= '1';
	WAIT FOR 30000 ps;
	ir_data(7) <= '0';
	WAIT FOR 30000 ps;
	ir_data(7) <= '1';
	WAIT FOR 60000 ps;
	ir_data(7) <= '0';
	WAIT FOR 90000 ps;
	ir_data(7) <= '1';
	WAIT FOR 60000 ps;
	ir_data(7) <= '0';
WAIT;
END PROCESS t_prcs_ir_data_7;
-- ir_data[6]
t_prcs_ir_data_6: PROCESS
BEGIN
	ir_data(6) <= '0';
	WAIT FOR 30000 ps;
	ir_data(6) <= '1';
	WAIT FOR 90000 ps;
	ir_data(6) <= '0';
	WAIT FOR 30000 ps;
	ir_data(6) <= '1';
	WAIT FOR 30000 ps;
	ir_data(6) <= '0';
	WAIT FOR 30000 ps;
	ir_data(6) <= '1';
	WAIT FOR 30000 ps;
	ir_data(6) <= '0';
	WAIT FOR 60000 ps;
	ir_data(6) <= '1';
	WAIT FOR 30000 ps;
	ir_data(6) <= '0';
	WAIT FOR 30000 ps;
	ir_data(6) <= '1';
	WAIT FOR 30000 ps;
	ir_data(6) <= '0';
	WAIT FOR 30000 ps;
	ir_data(6) <= '1';
	WAIT FOR 30000 ps;
	ir_data(6) <= '0';
	WAIT FOR 30000 ps;
	ir_data(6) <= '1';
	WAIT FOR 210000 ps;
	ir_data(6) <= '0';
	WAIT FOR 30000 ps;
	ir_data(6) <= '1';
	WAIT FOR 60000 ps;
	ir_data(6) <= '0';
	WAIT FOR 90000 ps;
	ir_data(6) <= '1';
	WAIT FOR 30000 ps;
	ir_data(6) <= '0';
	WAIT FOR 60000 ps;
	ir_data(6) <= '1';
	WAIT FOR 30000 ps;
	ir_data(6) <= '0';
WAIT;
END PROCESS t_prcs_ir_data_6;
-- ir_data[5]
t_prcs_ir_data_5: PROCESS
BEGIN
	ir_data(5) <= '1';
	WAIT FOR 30000 ps;
	ir_data(5) <= '0';
	WAIT FOR 30000 ps;
	ir_data(5) <= '1';
	WAIT FOR 30000 ps;
	ir_data(5) <= '0';
	WAIT FOR 60000 ps;
	ir_data(5) <= '1';
	WAIT FOR 30000 ps;
	ir_data(5) <= '0';
	WAIT FOR 30000 ps;
	ir_data(5) <= '1';
	WAIT FOR 60000 ps;
	ir_data(5) <= '0';
	WAIT FOR 90000 ps;
	ir_data(5) <= '1';
	WAIT FOR 30000 ps;
	ir_data(5) <= '0';
	WAIT FOR 30000 ps;
	ir_data(5) <= '1';
	WAIT FOR 30000 ps;
	ir_data(5) <= '0';
	WAIT FOR 90000 ps;
	ir_data(5) <= '1';
	WAIT FOR 90000 ps;
	ir_data(5) <= '0';
	WAIT FOR 90000 ps;
	ir_data(5) <= '1';
	WAIT FOR 30000 ps;
	ir_data(5) <= '0';
	WAIT FOR 90000 ps;
	ir_data(5) <= '1';
	WAIT FOR 90000 ps;
	ir_data(5) <= '0';
	WAIT FOR 30000 ps;
	ir_data(5) <= '1';
	WAIT FOR 30000 ps;
	ir_data(5) <= '0';
WAIT;
END PROCESS t_prcs_ir_data_5;
-- ir_data[4]
t_prcs_ir_data_4: PROCESS
BEGIN
	ir_data(4) <= '1';
	WAIT FOR 60000 ps;
	ir_data(4) <= '0';
	WAIT FOR 30000 ps;
	ir_data(4) <= '1';
	WAIT FOR 90000 ps;
	ir_data(4) <= '0';
	WAIT FOR 30000 ps;
	ir_data(4) <= '1';
	WAIT FOR 30000 ps;
	ir_data(4) <= '0';
	WAIT FOR 30000 ps;
	ir_data(4) <= '1';
	WAIT FOR 90000 ps;
	ir_data(4) <= '0';
	WAIT FOR 60000 ps;
	ir_data(4) <= '1';
	WAIT FOR 30000 ps;
	ir_data(4) <= '0';
	WAIT FOR 30000 ps;
	ir_data(4) <= '1';
	WAIT FOR 30000 ps;
	ir_data(4) <= '0';
	WAIT FOR 30000 ps;
	ir_data(4) <= '1';
	WAIT FOR 30000 ps;
	ir_data(4) <= '0';
	WAIT FOR 30000 ps;
	ir_data(4) <= '1';
	WAIT FOR 60000 ps;
	ir_data(4) <= '0';
	WAIT FOR 30000 ps;
	ir_data(4) <= '1';
	WAIT FOR 60000 ps;
	ir_data(4) <= '0';
	WAIT FOR 60000 ps;
	ir_data(4) <= '1';
	WAIT FOR 60000 ps;
	ir_data(4) <= '0';
	WAIT FOR 30000 ps;
	ir_data(4) <= '1';
	WAIT FOR 60000 ps;
	ir_data(4) <= '0';
	WAIT FOR 30000 ps;
	ir_data(4) <= '1';
WAIT;
END PROCESS t_prcs_ir_data_4;
-- ir_data[3]
t_prcs_ir_data_3: PROCESS
BEGIN
	ir_data(3) <= '1';
	WAIT FOR 60000 ps;
	ir_data(3) <= '0';
	WAIT FOR 30000 ps;
	ir_data(3) <= '1';
	WAIT FOR 30000 ps;
	ir_data(3) <= '0';
	WAIT FOR 90000 ps;
	ir_data(3) <= '1';
	WAIT FOR 150000 ps;
	ir_data(3) <= '0';
	WAIT FOR 90000 ps;
	ir_data(3) <= '1';
	WAIT FOR 30000 ps;
	ir_data(3) <= '0';
	WAIT FOR 30000 ps;
	ir_data(3) <= '1';
	WAIT FOR 60000 ps;
	ir_data(3) <= '0';
	WAIT FOR 30000 ps;
	ir_data(3) <= '1';
	WAIT FOR 60000 ps;
	ir_data(3) <= '0';
	WAIT FOR 60000 ps;
	ir_data(3) <= '1';
	WAIT FOR 30000 ps;
	ir_data(3) <= '0';
	WAIT FOR 30000 ps;
	ir_data(3) <= '1';
	WAIT FOR 60000 ps;
	ir_data(3) <= '0';
	WAIT FOR 30000 ps;
	ir_data(3) <= '1';
	WAIT FOR 120000 ps;
	ir_data(3) <= '0';
WAIT;
END PROCESS t_prcs_ir_data_3;
-- ir_data[2]
t_prcs_ir_data_2: PROCESS
BEGIN
	ir_data(2) <= '0';
	WAIT FOR 30000 ps;
	ir_data(2) <= '1';
	WAIT FOR 30000 ps;
	ir_data(2) <= '0';
	WAIT FOR 120000 ps;
	ir_data(2) <= '1';
	WAIT FOR 30000 ps;
	ir_data(2) <= '0';
	WAIT FOR 30000 ps;
	ir_data(2) <= '1';
	WAIT FOR 60000 ps;
	ir_data(2) <= '0';
	WAIT FOR 30000 ps;
	ir_data(2) <= '1';
	WAIT FOR 90000 ps;
	ir_data(2) <= '0';
	WAIT FOR 30000 ps;
	ir_data(2) <= '1';
	WAIT FOR 60000 ps;
	ir_data(2) <= '0';
	WAIT FOR 30000 ps;
	ir_data(2) <= '1';
	WAIT FOR 30000 ps;
	ir_data(2) <= '0';
	WAIT FOR 30000 ps;
	ir_data(2) <= '1';
	WAIT FOR 60000 ps;
	ir_data(2) <= '0';
	WAIT FOR 30000 ps;
	ir_data(2) <= '1';
	WAIT FOR 60000 ps;
	ir_data(2) <= '0';
	WAIT FOR 120000 ps;
	ir_data(2) <= '1';
	WAIT FOR 60000 ps;
	ir_data(2) <= '0';
	WAIT FOR 30000 ps;
	ir_data(2) <= '1';
	WAIT FOR 30000 ps;
	ir_data(2) <= '0';
WAIT;
END PROCESS t_prcs_ir_data_2;
-- ir_data[1]
t_prcs_ir_data_1: PROCESS
BEGIN
	ir_data(1) <= '0';
	WAIT FOR 60000 ps;
	ir_data(1) <= '1';
	WAIT FOR 60000 ps;
	ir_data(1) <= '0';
	WAIT FOR 60000 ps;
	ir_data(1) <= '1';
	WAIT FOR 30000 ps;
	ir_data(1) <= '0';
	WAIT FOR 90000 ps;
	ir_data(1) <= '1';
	WAIT FOR 30000 ps;
	ir_data(1) <= '0';
	WAIT FOR 120000 ps;
	ir_data(1) <= '1';
	WAIT FOR 30000 ps;
	ir_data(1) <= '0';
	WAIT FOR 30000 ps;
	ir_data(1) <= '1';
	WAIT FOR 60000 ps;
	ir_data(1) <= '0';
	WAIT FOR 30000 ps;
	ir_data(1) <= '1';
	WAIT FOR 30000 ps;
	ir_data(1) <= '0';
	WAIT FOR 60000 ps;
	ir_data(1) <= '1';
	WAIT FOR 90000 ps;
	ir_data(1) <= '0';
	WAIT FOR 30000 ps;
	ir_data(1) <= '1';
	WAIT FOR 30000 ps;
	ir_data(1) <= '0';
	WAIT FOR 30000 ps;
	ir_data(1) <= '1';
	WAIT FOR 30000 ps;
	ir_data(1) <= '0';
	WAIT FOR 30000 ps;
	ir_data(1) <= '1';
	WAIT FOR 30000 ps;
	ir_data(1) <= '0';
	WAIT FOR 30000 ps;
	ir_data(1) <= '1';
WAIT;
END PROCESS t_prcs_ir_data_1;
-- ir_data[0]
t_prcs_ir_data_0: PROCESS
BEGIN
	ir_data(0) <= '0';
	WAIT FOR 30000 ps;
	ir_data(0) <= '1';
	WAIT FOR 30000 ps;
	ir_data(0) <= '0';
	WAIT FOR 30000 ps;
	ir_data(0) <= '1';
	WAIT FOR 30000 ps;
	ir_data(0) <= '0';
	WAIT FOR 120000 ps;
	ir_data(0) <= '1';
	WAIT FOR 120000 ps;
	ir_data(0) <= '0';
	WAIT FOR 90000 ps;
	ir_data(0) <= '1';
	WAIT FOR 30000 ps;
	ir_data(0) <= '0';
	WAIT FOR 90000 ps;
	ir_data(0) <= '1';
	WAIT FOR 60000 ps;
	ir_data(0) <= '0';
	WAIT FOR 30000 ps;
	ir_data(0) <= '1';
	WAIT FOR 30000 ps;
	ir_data(0) <= '0';
	WAIT FOR 60000 ps;
	ir_data(0) <= '1';
	WAIT FOR 30000 ps;
	ir_data(0) <= '0';
WAIT;
END PROCESS t_prcs_ir_data_0;

-- ir_ld
t_prcs_ir_ld: PROCESS
BEGIN
	FOR i IN 1 TO 33
	LOOP
		ir_ld <= '0';
		WAIT FOR 15000 ps;
		ir_ld <= '1';
		WAIT FOR 15000 ps;
	END LOOP;
	ir_ld <= '0';
WAIT;
END PROCESS t_prcs_ir_ld;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END instruction_register_arch;
