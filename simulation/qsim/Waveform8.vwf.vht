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
-- Generated on "04/27/2025 20:51:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          program_counter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY program_counter_vhd_vec_tst IS
END program_counter_vhd_vec_tst;
ARCHITECTURE program_counter_arch OF program_counter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL pc_in : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL pc_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL pc_reset : STD_LOGIC;
COMPONENT program_counter
	PORT (
	clk : IN STD_LOGIC;
	pc_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	pc_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	pc_reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : program_counter
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	pc_in => pc_in,
	pc_out => pc_out,
	pc_reset => pc_reset
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
-- pc_in[15]
t_prcs_pc_in_15: PROCESS
BEGIN
	pc_in(15) <= '1';
	WAIT FOR 20000 ps;
	pc_in(15) <= '0';
	WAIT FOR 40000 ps;
	pc_in(15) <= '1';
	WAIT FOR 20000 ps;
	pc_in(15) <= '0';
	WAIT FOR 20000 ps;
	pc_in(15) <= '1';
	WAIT FOR 20000 ps;
	pc_in(15) <= '0';
	WAIT FOR 20000 ps;
	pc_in(15) <= '1';
	WAIT FOR 20000 ps;
	pc_in(15) <= '0';
	WAIT FOR 20000 ps;
	pc_in(15) <= '1';
	WAIT FOR 20000 ps;
	pc_in(15) <= '0';
	WAIT FOR 20000 ps;
	pc_in(15) <= '1';
	WAIT FOR 20000 ps;
	pc_in(15) <= '0';
	WAIT FOR 20000 ps;
	pc_in(15) <= '1';
	WAIT FOR 20000 ps;
	pc_in(15) <= '0';
	WAIT FOR 20000 ps;
	pc_in(15) <= '1';
	WAIT FOR 20000 ps;
	pc_in(15) <= '0';
	WAIT FOR 120000 ps;
	pc_in(15) <= '1';
	WAIT FOR 20000 ps;
	pc_in(15) <= '0';
	WAIT FOR 20000 ps;
	pc_in(15) <= '1';
	WAIT FOR 60000 ps;
	pc_in(15) <= '0';
	WAIT FOR 20000 ps;
	pc_in(15) <= '1';
	WAIT FOR 20000 ps;
	pc_in(15) <= '0';
	WAIT FOR 20000 ps;
	pc_in(15) <= '1';
	WAIT FOR 20000 ps;
	pc_in(15) <= '0';
	WAIT FOR 40000 ps;
	pc_in(15) <= '1';
	WAIT FOR 40000 ps;
	pc_in(15) <= '0';
	WAIT FOR 20000 ps;
	pc_in(15) <= '1';
	WAIT FOR 20000 ps;
	pc_in(15) <= '0';
	WAIT FOR 40000 ps;
	pc_in(15) <= '1';
	WAIT FOR 40000 ps;
	pc_in(15) <= '0';
	WAIT FOR 20000 ps;
	pc_in(15) <= '1';
	WAIT FOR 40000 ps;
	pc_in(15) <= '0';
	WAIT FOR 20000 ps;
	pc_in(15) <= '1';
	WAIT FOR 20000 ps;
	pc_in(15) <= '0';
	WAIT FOR 60000 ps;
	pc_in(15) <= '1';
WAIT;
END PROCESS t_prcs_pc_in_15;
-- pc_in[14]
t_prcs_pc_in_14: PROCESS
BEGIN
	pc_in(14) <= '1';
	WAIT FOR 20000 ps;
	pc_in(14) <= '0';
	WAIT FOR 20000 ps;
	pc_in(14) <= '1';
	WAIT FOR 20000 ps;
	pc_in(14) <= '0';
	WAIT FOR 20000 ps;
	pc_in(14) <= '1';
	WAIT FOR 20000 ps;
	pc_in(14) <= '0';
	WAIT FOR 40000 ps;
	pc_in(14) <= '1';
	WAIT FOR 80000 ps;
	pc_in(14) <= '0';
	WAIT FOR 20000 ps;
	pc_in(14) <= '1';
	WAIT FOR 20000 ps;
	pc_in(14) <= '0';
	WAIT FOR 20000 ps;
	pc_in(14) <= '1';
	WAIT FOR 20000 ps;
	pc_in(14) <= '0';
	WAIT FOR 20000 ps;
	pc_in(14) <= '1';
	WAIT FOR 80000 ps;
	pc_in(14) <= '0';
	WAIT FOR 40000 ps;
	pc_in(14) <= '1';
	WAIT FOR 20000 ps;
	pc_in(14) <= '0';
	WAIT FOR 40000 ps;
	pc_in(14) <= '1';
	WAIT FOR 20000 ps;
	pc_in(14) <= '0';
	WAIT FOR 40000 ps;
	pc_in(14) <= '1';
	WAIT FOR 40000 ps;
	pc_in(14) <= '0';
	WAIT FOR 100000 ps;
	pc_in(14) <= '1';
	WAIT FOR 40000 ps;
	pc_in(14) <= '0';
	WAIT FOR 40000 ps;
	pc_in(14) <= '1';
	WAIT FOR 20000 ps;
	pc_in(14) <= '0';
	WAIT FOR 20000 ps;
	pc_in(14) <= '1';
	WAIT FOR 40000 ps;
	pc_in(14) <= '0';
	WAIT FOR 100000 ps;
	pc_in(14) <= '1';
	WAIT FOR 20000 ps;
	pc_in(14) <= '0';
WAIT;
END PROCESS t_prcs_pc_in_14;
-- pc_in[13]
t_prcs_pc_in_13: PROCESS
BEGIN
	pc_in(13) <= '1';
	WAIT FOR 40000 ps;
	pc_in(13) <= '0';
	WAIT FOR 20000 ps;
	pc_in(13) <= '1';
	WAIT FOR 20000 ps;
	pc_in(13) <= '0';
	WAIT FOR 20000 ps;
	pc_in(13) <= '1';
	WAIT FOR 20000 ps;
	pc_in(13) <= '0';
	WAIT FOR 20000 ps;
	pc_in(13) <= '1';
	WAIT FOR 40000 ps;
	pc_in(13) <= '0';
	WAIT FOR 20000 ps;
	pc_in(13) <= '1';
	WAIT FOR 40000 ps;
	pc_in(13) <= '0';
	WAIT FOR 100000 ps;
	pc_in(13) <= '1';
	WAIT FOR 20000 ps;
	pc_in(13) <= '0';
	WAIT FOR 20000 ps;
	pc_in(13) <= '1';
	WAIT FOR 20000 ps;
	pc_in(13) <= '0';
	WAIT FOR 40000 ps;
	pc_in(13) <= '1';
	WAIT FOR 200000 ps;
	pc_in(13) <= '0';
	WAIT FOR 40000 ps;
	pc_in(13) <= '1';
	WAIT FOR 20000 ps;
	pc_in(13) <= '0';
	WAIT FOR 100000 ps;
	pc_in(13) <= '1';
	WAIT FOR 20000 ps;
	pc_in(13) <= '0';
	WAIT FOR 40000 ps;
	pc_in(13) <= '1';
	WAIT FOR 20000 ps;
	pc_in(13) <= '0';
	WAIT FOR 20000 ps;
	pc_in(13) <= '1';
	WAIT FOR 20000 ps;
	pc_in(13) <= '0';
	WAIT FOR 60000 ps;
	pc_in(13) <= '1';
WAIT;
END PROCESS t_prcs_pc_in_13;
-- pc_in[12]
t_prcs_pc_in_12: PROCESS
BEGIN
	pc_in(12) <= '0';
	WAIT FOR 60000 ps;
	pc_in(12) <= '1';
	WAIT FOR 60000 ps;
	pc_in(12) <= '0';
	WAIT FOR 40000 ps;
	pc_in(12) <= '1';
	WAIT FOR 40000 ps;
	pc_in(12) <= '0';
	WAIT FOR 20000 ps;
	pc_in(12) <= '1';
	WAIT FOR 20000 ps;
	pc_in(12) <= '0';
	WAIT FOR 40000 ps;
	pc_in(12) <= '1';
	WAIT FOR 40000 ps;
	pc_in(12) <= '0';
	WAIT FOR 40000 ps;
	pc_in(12) <= '1';
	WAIT FOR 40000 ps;
	pc_in(12) <= '0';
	WAIT FOR 100000 ps;
	pc_in(12) <= '1';
	WAIT FOR 100000 ps;
	pc_in(12) <= '0';
	WAIT FOR 20000 ps;
	pc_in(12) <= '1';
	WAIT FOR 60000 ps;
	pc_in(12) <= '0';
	WAIT FOR 20000 ps;
	pc_in(12) <= '1';
	WAIT FOR 40000 ps;
	pc_in(12) <= '0';
	WAIT FOR 20000 ps;
	pc_in(12) <= '1';
	WAIT FOR 20000 ps;
	pc_in(12) <= '0';
	WAIT FOR 20000 ps;
	pc_in(12) <= '1';
	WAIT FOR 20000 ps;
	pc_in(12) <= '0';
	WAIT FOR 40000 ps;
	pc_in(12) <= '1';
	WAIT FOR 20000 ps;
	pc_in(12) <= '0';
	WAIT FOR 20000 ps;
	pc_in(12) <= '1';
	WAIT FOR 20000 ps;
	pc_in(12) <= '0';
	WAIT FOR 20000 ps;
	pc_in(12) <= '1';
WAIT;
END PROCESS t_prcs_pc_in_12;
-- pc_in[11]
t_prcs_pc_in_11: PROCESS
BEGIN
	pc_in(11) <= '0';
	WAIT FOR 20000 ps;
	pc_in(11) <= '1';
	WAIT FOR 20000 ps;
	pc_in(11) <= '0';
	WAIT FOR 40000 ps;
	pc_in(11) <= '1';
	WAIT FOR 160000 ps;
	pc_in(11) <= '0';
	WAIT FOR 40000 ps;
	pc_in(11) <= '1';
	WAIT FOR 20000 ps;
	pc_in(11) <= '0';
	WAIT FOR 40000 ps;
	pc_in(11) <= '1';
	WAIT FOR 40000 ps;
	pc_in(11) <= '0';
	WAIT FOR 60000 ps;
	pc_in(11) <= '1';
	WAIT FOR 20000 ps;
	pc_in(11) <= '0';
	WAIT FOR 40000 ps;
	pc_in(11) <= '1';
	WAIT FOR 20000 ps;
	pc_in(11) <= '0';
	WAIT FOR 20000 ps;
	pc_in(11) <= '1';
	WAIT FOR 60000 ps;
	pc_in(11) <= '0';
	WAIT FOR 20000 ps;
	pc_in(11) <= '1';
	WAIT FOR 60000 ps;
	pc_in(11) <= '0';
	WAIT FOR 20000 ps;
	pc_in(11) <= '1';
	WAIT FOR 20000 ps;
	pc_in(11) <= '0';
	WAIT FOR 20000 ps;
	pc_in(11) <= '1';
	WAIT FOR 60000 ps;
	pc_in(11) <= '0';
	WAIT FOR 60000 ps;
	pc_in(11) <= '1';
	WAIT FOR 20000 ps;
	pc_in(11) <= '0';
	WAIT FOR 60000 ps;
	pc_in(11) <= '1';
	WAIT FOR 20000 ps;
	pc_in(11) <= '0';
	WAIT FOR 20000 ps;
	pc_in(11) <= '1';
WAIT;
END PROCESS t_prcs_pc_in_11;
-- pc_in[10]
t_prcs_pc_in_10: PROCESS
BEGIN
	pc_in(10) <= '1';
	WAIT FOR 60000 ps;
	pc_in(10) <= '0';
	WAIT FOR 20000 ps;
	pc_in(10) <= '1';
	WAIT FOR 60000 ps;
	pc_in(10) <= '0';
	WAIT FOR 20000 ps;
	pc_in(10) <= '1';
	WAIT FOR 20000 ps;
	pc_in(10) <= '0';
	WAIT FOR 20000 ps;
	pc_in(10) <= '1';
	WAIT FOR 20000 ps;
	pc_in(10) <= '0';
	WAIT FOR 40000 ps;
	pc_in(10) <= '1';
	WAIT FOR 20000 ps;
	pc_in(10) <= '0';
	WAIT FOR 80000 ps;
	pc_in(10) <= '1';
	WAIT FOR 40000 ps;
	pc_in(10) <= '0';
	WAIT FOR 20000 ps;
	pc_in(10) <= '1';
	WAIT FOR 40000 ps;
	pc_in(10) <= '0';
	WAIT FOR 20000 ps;
	pc_in(10) <= '1';
	WAIT FOR 20000 ps;
	pc_in(10) <= '0';
	WAIT FOR 20000 ps;
	pc_in(10) <= '1';
	WAIT FOR 20000 ps;
	pc_in(10) <= '0';
	WAIT FOR 60000 ps;
	pc_in(10) <= '1';
	WAIT FOR 20000 ps;
	pc_in(10) <= '0';
	WAIT FOR 80000 ps;
	pc_in(10) <= '1';
	WAIT FOR 20000 ps;
	pc_in(10) <= '0';
	WAIT FOR 20000 ps;
	pc_in(10) <= '1';
	WAIT FOR 40000 ps;
	pc_in(10) <= '0';
	WAIT FOR 40000 ps;
	pc_in(10) <= '1';
	WAIT FOR 40000 ps;
	pc_in(10) <= '0';
	WAIT FOR 40000 ps;
	pc_in(10) <= '1';
	WAIT FOR 20000 ps;
	pc_in(10) <= '0';
	WAIT FOR 20000 ps;
	pc_in(10) <= '1';
	WAIT FOR 20000 ps;
	pc_in(10) <= '0';
WAIT;
END PROCESS t_prcs_pc_in_10;
-- pc_in[9]
t_prcs_pc_in_9: PROCESS
BEGIN
	pc_in(9) <= '1';
	WAIT FOR 20000 ps;
	pc_in(9) <= '0';
	WAIT FOR 60000 ps;
	pc_in(9) <= '1';
	WAIT FOR 60000 ps;
	pc_in(9) <= '0';
	WAIT FOR 20000 ps;
	pc_in(9) <= '1';
	WAIT FOR 60000 ps;
	pc_in(9) <= '0';
	WAIT FOR 60000 ps;
	pc_in(9) <= '1';
	WAIT FOR 20000 ps;
	pc_in(9) <= '0';
	WAIT FOR 60000 ps;
	pc_in(9) <= '1';
	WAIT FOR 40000 ps;
	pc_in(9) <= '0';
	WAIT FOR 20000 ps;
	pc_in(9) <= '1';
	WAIT FOR 60000 ps;
	pc_in(9) <= '0';
	WAIT FOR 40000 ps;
	pc_in(9) <= '1';
	WAIT FOR 20000 ps;
	pc_in(9) <= '0';
	WAIT FOR 40000 ps;
	pc_in(9) <= '1';
	WAIT FOR 20000 ps;
	pc_in(9) <= '0';
	WAIT FOR 20000 ps;
	pc_in(9) <= '1';
	WAIT FOR 20000 ps;
	pc_in(9) <= '0';
	WAIT FOR 60000 ps;
	pc_in(9) <= '1';
	WAIT FOR 40000 ps;
	pc_in(9) <= '0';
	WAIT FOR 100000 ps;
	pc_in(9) <= '1';
	WAIT FOR 40000 ps;
	pc_in(9) <= '0';
	WAIT FOR 40000 ps;
	pc_in(9) <= '1';
	WAIT FOR 40000 ps;
	pc_in(9) <= '0';
	WAIT FOR 20000 ps;
	pc_in(9) <= '1';
WAIT;
END PROCESS t_prcs_pc_in_9;
-- pc_in[8]
t_prcs_pc_in_8: PROCESS
BEGIN
	pc_in(8) <= '1';
	WAIT FOR 80000 ps;
	pc_in(8) <= '0';
	WAIT FOR 80000 ps;
	pc_in(8) <= '1';
	WAIT FOR 20000 ps;
	pc_in(8) <= '0';
	WAIT FOR 40000 ps;
	pc_in(8) <= '1';
	WAIT FOR 20000 ps;
	pc_in(8) <= '0';
	WAIT FOR 80000 ps;
	pc_in(8) <= '1';
	WAIT FOR 20000 ps;
	pc_in(8) <= '0';
	WAIT FOR 20000 ps;
	pc_in(8) <= '1';
	WAIT FOR 80000 ps;
	pc_in(8) <= '0';
	WAIT FOR 80000 ps;
	pc_in(8) <= '1';
	WAIT FOR 20000 ps;
	pc_in(8) <= '0';
	WAIT FOR 60000 ps;
	pc_in(8) <= '1';
	WAIT FOR 20000 ps;
	pc_in(8) <= '0';
	WAIT FOR 100000 ps;
	pc_in(8) <= '1';
	WAIT FOR 20000 ps;
	pc_in(8) <= '0';
	WAIT FOR 20000 ps;
	pc_in(8) <= '1';
	WAIT FOR 20000 ps;
	pc_in(8) <= '0';
	WAIT FOR 80000 ps;
	pc_in(8) <= '1';
	WAIT FOR 20000 ps;
	pc_in(8) <= '0';
WAIT;
END PROCESS t_prcs_pc_in_8;
-- pc_in[7]
t_prcs_pc_in_7: PROCESS
BEGIN
	pc_in(7) <= '1';
	WAIT FOR 60000 ps;
	pc_in(7) <= '0';
	WAIT FOR 20000 ps;
	pc_in(7) <= '1';
	WAIT FOR 20000 ps;
	pc_in(7) <= '0';
	WAIT FOR 20000 ps;
	pc_in(7) <= '1';
	WAIT FOR 60000 ps;
	pc_in(7) <= '0';
	WAIT FOR 20000 ps;
	pc_in(7) <= '1';
	WAIT FOR 40000 ps;
	pc_in(7) <= '0';
	WAIT FOR 60000 ps;
	pc_in(7) <= '1';
	WAIT FOR 60000 ps;
	pc_in(7) <= '0';
	WAIT FOR 20000 ps;
	pc_in(7) <= '1';
	WAIT FOR 60000 ps;
	pc_in(7) <= '0';
	WAIT FOR 40000 ps;
	pc_in(7) <= '1';
	WAIT FOR 20000 ps;
	pc_in(7) <= '0';
	WAIT FOR 20000 ps;
	pc_in(7) <= '1';
	WAIT FOR 40000 ps;
	pc_in(7) <= '0';
	WAIT FOR 20000 ps;
	pc_in(7) <= '1';
	WAIT FOR 100000 ps;
	pc_in(7) <= '0';
	WAIT FOR 60000 ps;
	pc_in(7) <= '1';
	WAIT FOR 80000 ps;
	pc_in(7) <= '0';
	WAIT FOR 20000 ps;
	pc_in(7) <= '1';
	WAIT FOR 20000 ps;
	pc_in(7) <= '0';
	WAIT FOR 60000 ps;
	pc_in(7) <= '1';
	WAIT FOR 20000 ps;
	pc_in(7) <= '0';
	WAIT FOR 20000 ps;
	pc_in(7) <= '1';
WAIT;
END PROCESS t_prcs_pc_in_7;
-- pc_in[6]
t_prcs_pc_in_6: PROCESS
BEGIN
	pc_in(6) <= '1';
	WAIT FOR 40000 ps;
	pc_in(6) <= '0';
	WAIT FOR 40000 ps;
	pc_in(6) <= '1';
	WAIT FOR 20000 ps;
	pc_in(6) <= '0';
	WAIT FOR 20000 ps;
	pc_in(6) <= '1';
	WAIT FOR 20000 ps;
	pc_in(6) <= '0';
	WAIT FOR 60000 ps;
	pc_in(6) <= '1';
	WAIT FOR 100000 ps;
	pc_in(6) <= '0';
	WAIT FOR 20000 ps;
	pc_in(6) <= '1';
	WAIT FOR 40000 ps;
	pc_in(6) <= '0';
	WAIT FOR 20000 ps;
	pc_in(6) <= '1';
	WAIT FOR 20000 ps;
	pc_in(6) <= '0';
	WAIT FOR 60000 ps;
	pc_in(6) <= '1';
	WAIT FOR 20000 ps;
	pc_in(6) <= '0';
	WAIT FOR 20000 ps;
	pc_in(6) <= '1';
	WAIT FOR 20000 ps;
	pc_in(6) <= '0';
	WAIT FOR 40000 ps;
	pc_in(6) <= '1';
	WAIT FOR 40000 ps;
	pc_in(6) <= '0';
	WAIT FOR 40000 ps;
	pc_in(6) <= '1';
	WAIT FOR 40000 ps;
	pc_in(6) <= '0';
	WAIT FOR 40000 ps;
	pc_in(6) <= '1';
	WAIT FOR 20000 ps;
	pc_in(6) <= '0';
	WAIT FOR 40000 ps;
	pc_in(6) <= '1';
	WAIT FOR 20000 ps;
	pc_in(6) <= '0';
	WAIT FOR 20000 ps;
	pc_in(6) <= '1';
	WAIT FOR 60000 ps;
	pc_in(6) <= '0';
	WAIT FOR 40000 ps;
	pc_in(6) <= '1';
	WAIT FOR 60000 ps;
	pc_in(6) <= '0';
WAIT;
END PROCESS t_prcs_pc_in_6;
-- pc_in[5]
t_prcs_pc_in_5: PROCESS
BEGIN
	pc_in(5) <= '0';
	WAIT FOR 20000 ps;
	pc_in(5) <= '1';
	WAIT FOR 100000 ps;
	pc_in(5) <= '0';
	WAIT FOR 40000 ps;
	pc_in(5) <= '1';
	WAIT FOR 20000 ps;
	pc_in(5) <= '0';
	WAIT FOR 40000 ps;
	pc_in(5) <= '1';
	WAIT FOR 120000 ps;
	pc_in(5) <= '0';
	WAIT FOR 100000 ps;
	pc_in(5) <= '1';
	WAIT FOR 20000 ps;
	pc_in(5) <= '0';
	WAIT FOR 100000 ps;
	pc_in(5) <= '1';
	WAIT FOR 40000 ps;
	pc_in(5) <= '0';
	WAIT FOR 20000 ps;
	pc_in(5) <= '1';
	WAIT FOR 20000 ps;
	pc_in(5) <= '0';
	WAIT FOR 40000 ps;
	pc_in(5) <= '1';
	WAIT FOR 20000 ps;
	pc_in(5) <= '0';
	WAIT FOR 80000 ps;
	pc_in(5) <= '1';
	WAIT FOR 20000 ps;
	pc_in(5) <= '0';
	WAIT FOR 20000 ps;
	pc_in(5) <= '1';
	WAIT FOR 20000 ps;
	pc_in(5) <= '0';
	WAIT FOR 20000 ps;
	pc_in(5) <= '1';
	WAIT FOR 20000 ps;
	pc_in(5) <= '0';
	WAIT FOR 60000 ps;
	pc_in(5) <= '1';
	WAIT FOR 40000 ps;
	pc_in(5) <= '0';
WAIT;
END PROCESS t_prcs_pc_in_5;
-- pc_in[4]
t_prcs_pc_in_4: PROCESS
BEGIN
	pc_in(4) <= '0';
	WAIT FOR 20000 ps;
	pc_in(4) <= '1';
	WAIT FOR 20000 ps;
	pc_in(4) <= '0';
	WAIT FOR 40000 ps;
	pc_in(4) <= '1';
	WAIT FOR 20000 ps;
	pc_in(4) <= '0';
	WAIT FOR 20000 ps;
	pc_in(4) <= '1';
	WAIT FOR 60000 ps;
	pc_in(4) <= '0';
	WAIT FOR 20000 ps;
	pc_in(4) <= '1';
	WAIT FOR 40000 ps;
	pc_in(4) <= '0';
	WAIT FOR 60000 ps;
	pc_in(4) <= '1';
	WAIT FOR 20000 ps;
	pc_in(4) <= '0';
	WAIT FOR 40000 ps;
	pc_in(4) <= '1';
	WAIT FOR 20000 ps;
	pc_in(4) <= '0';
	WAIT FOR 20000 ps;
	pc_in(4) <= '1';
	WAIT FOR 20000 ps;
	pc_in(4) <= '0';
	WAIT FOR 20000 ps;
	pc_in(4) <= '1';
	WAIT FOR 120000 ps;
	pc_in(4) <= '0';
	WAIT FOR 20000 ps;
	pc_in(4) <= '1';
	WAIT FOR 20000 ps;
	pc_in(4) <= '0';
	WAIT FOR 40000 ps;
	pc_in(4) <= '1';
	WAIT FOR 20000 ps;
	pc_in(4) <= '0';
	WAIT FOR 20000 ps;
	pc_in(4) <= '1';
	WAIT FOR 80000 ps;
	pc_in(4) <= '0';
	WAIT FOR 20000 ps;
	pc_in(4) <= '1';
	WAIT FOR 20000 ps;
	pc_in(4) <= '0';
	WAIT FOR 40000 ps;
	pc_in(4) <= '1';
	WAIT FOR 40000 ps;
	pc_in(4) <= '0';
	WAIT FOR 20000 ps;
	pc_in(4) <= '1';
WAIT;
END PROCESS t_prcs_pc_in_4;
-- pc_in[3]
t_prcs_pc_in_3: PROCESS
BEGIN
	pc_in(3) <= '0';
	WAIT FOR 60000 ps;
	pc_in(3) <= '1';
	WAIT FOR 20000 ps;
	pc_in(3) <= '0';
	WAIT FOR 20000 ps;
	pc_in(3) <= '1';
	WAIT FOR 40000 ps;
	pc_in(3) <= '0';
	WAIT FOR 20000 ps;
	pc_in(3) <= '1';
	WAIT FOR 20000 ps;
	pc_in(3) <= '0';
	WAIT FOR 40000 ps;
	pc_in(3) <= '1';
	WAIT FOR 60000 ps;
	pc_in(3) <= '0';
	WAIT FOR 20000 ps;
	pc_in(3) <= '1';
	WAIT FOR 60000 ps;
	pc_in(3) <= '0';
	WAIT FOR 80000 ps;
	pc_in(3) <= '1';
	WAIT FOR 40000 ps;
	pc_in(3) <= '0';
	WAIT FOR 40000 ps;
	pc_in(3) <= '1';
	WAIT FOR 20000 ps;
	pc_in(3) <= '0';
	WAIT FOR 20000 ps;
	pc_in(3) <= '1';
	WAIT FOR 40000 ps;
	pc_in(3) <= '0';
	WAIT FOR 40000 ps;
	pc_in(3) <= '1';
	WAIT FOR 80000 ps;
	pc_in(3) <= '0';
	WAIT FOR 40000 ps;
	pc_in(3) <= '1';
	WAIT FOR 20000 ps;
	pc_in(3) <= '0';
	WAIT FOR 40000 ps;
	pc_in(3) <= '1';
	WAIT FOR 20000 ps;
	pc_in(3) <= '0';
	WAIT FOR 20000 ps;
	pc_in(3) <= '1';
	WAIT FOR 60000 ps;
	pc_in(3) <= '0';
	WAIT FOR 20000 ps;
	pc_in(3) <= '1';
	WAIT FOR 20000 ps;
	pc_in(3) <= '0';
	WAIT FOR 20000 ps;
	pc_in(3) <= '1';
WAIT;
END PROCESS t_prcs_pc_in_3;
-- pc_in[2]
t_prcs_pc_in_2: PROCESS
BEGIN
	pc_in(2) <= '0';
	WAIT FOR 20000 ps;
	pc_in(2) <= '1';
	WAIT FOR 60000 ps;
	pc_in(2) <= '0';
	WAIT FOR 40000 ps;
	pc_in(2) <= '1';
	WAIT FOR 40000 ps;
	pc_in(2) <= '0';
	WAIT FOR 20000 ps;
	pc_in(2) <= '1';
	WAIT FOR 20000 ps;
	pc_in(2) <= '0';
	WAIT FOR 60000 ps;
	pc_in(2) <= '1';
	WAIT FOR 20000 ps;
	pc_in(2) <= '0';
	WAIT FOR 80000 ps;
	pc_in(2) <= '1';
	WAIT FOR 40000 ps;
	pc_in(2) <= '0';
	WAIT FOR 20000 ps;
	pc_in(2) <= '1';
	WAIT FOR 20000 ps;
	pc_in(2) <= '0';
	WAIT FOR 20000 ps;
	pc_in(2) <= '1';
	WAIT FOR 20000 ps;
	pc_in(2) <= '0';
	WAIT FOR 20000 ps;
	pc_in(2) <= '1';
	WAIT FOR 60000 ps;
	pc_in(2) <= '0';
	WAIT FOR 60000 ps;
	pc_in(2) <= '1';
	WAIT FOR 20000 ps;
	pc_in(2) <= '0';
	WAIT FOR 20000 ps;
	pc_in(2) <= '1';
	WAIT FOR 40000 ps;
	pc_in(2) <= '0';
	WAIT FOR 40000 ps;
	pc_in(2) <= '1';
	WAIT FOR 80000 ps;
	pc_in(2) <= '0';
	WAIT FOR 20000 ps;
	pc_in(2) <= '1';
	WAIT FOR 20000 ps;
	pc_in(2) <= '0';
	WAIT FOR 40000 ps;
	pc_in(2) <= '1';
	WAIT FOR 40000 ps;
	pc_in(2) <= '0';
	WAIT FOR 20000 ps;
	pc_in(2) <= '1';
WAIT;
END PROCESS t_prcs_pc_in_2;
-- pc_in[1]
t_prcs_pc_in_1: PROCESS
BEGIN
	pc_in(1) <= '1';
	WAIT FOR 80000 ps;
	pc_in(1) <= '0';
	WAIT FOR 60000 ps;
	pc_in(1) <= '1';
	WAIT FOR 40000 ps;
	pc_in(1) <= '0';
	WAIT FOR 100000 ps;
	pc_in(1) <= '1';
	WAIT FOR 20000 ps;
	pc_in(1) <= '0';
	WAIT FOR 20000 ps;
	pc_in(1) <= '1';
	WAIT FOR 40000 ps;
	pc_in(1) <= '0';
	WAIT FOR 60000 ps;
	pc_in(1) <= '1';
	WAIT FOR 60000 ps;
	pc_in(1) <= '0';
	WAIT FOR 60000 ps;
	pc_in(1) <= '1';
	WAIT FOR 60000 ps;
	pc_in(1) <= '0';
	WAIT FOR 20000 ps;
	pc_in(1) <= '1';
	WAIT FOR 40000 ps;
	pc_in(1) <= '0';
	WAIT FOR 60000 ps;
	pc_in(1) <= '1';
	WAIT FOR 20000 ps;
	pc_in(1) <= '0';
	WAIT FOR 20000 ps;
	pc_in(1) <= '1';
	WAIT FOR 80000 ps;
	pc_in(1) <= '0';
	WAIT FOR 20000 ps;
	pc_in(1) <= '1';
	WAIT FOR 80000 ps;
	pc_in(1) <= '0';
	WAIT FOR 20000 ps;
	pc_in(1) <= '1';
WAIT;
END PROCESS t_prcs_pc_in_1;
-- pc_in[0]
t_prcs_pc_in_0: PROCESS
BEGIN
	pc_in(0) <= '0';
	WAIT FOR 20000 ps;
	pc_in(0) <= '1';
	WAIT FOR 20000 ps;
	pc_in(0) <= '0';
	WAIT FOR 40000 ps;
	pc_in(0) <= '1';
	WAIT FOR 20000 ps;
	pc_in(0) <= '0';
	WAIT FOR 60000 ps;
	pc_in(0) <= '1';
	WAIT FOR 20000 ps;
	pc_in(0) <= '0';
	WAIT FOR 20000 ps;
	pc_in(0) <= '1';
	WAIT FOR 60000 ps;
	pc_in(0) <= '0';
	WAIT FOR 20000 ps;
	pc_in(0) <= '1';
	WAIT FOR 60000 ps;
	pc_in(0) <= '0';
	WAIT FOR 20000 ps;
	pc_in(0) <= '1';
	WAIT FOR 60000 ps;
	pc_in(0) <= '0';
	WAIT FOR 40000 ps;
	pc_in(0) <= '1';
	WAIT FOR 200000 ps;
	pc_in(0) <= '0';
	WAIT FOR 40000 ps;
	pc_in(0) <= '1';
	WAIT FOR 40000 ps;
	pc_in(0) <= '0';
	WAIT FOR 20000 ps;
	pc_in(0) <= '1';
	WAIT FOR 40000 ps;
	pc_in(0) <= '0';
	WAIT FOR 20000 ps;
	pc_in(0) <= '1';
	WAIT FOR 60000 ps;
	pc_in(0) <= '0';
	WAIT FOR 40000 ps;
	pc_in(0) <= '1';
	WAIT FOR 20000 ps;
	pc_in(0) <= '0';
	WAIT FOR 20000 ps;
	pc_in(0) <= '1';
WAIT;
END PROCESS t_prcs_pc_in_0;

-- pc_reset
t_prcs_pc_reset: PROCESS
BEGIN
	pc_reset <= '0';
WAIT;
END PROCESS t_prcs_pc_reset;
END program_counter_arch;
