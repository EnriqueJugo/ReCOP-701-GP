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
-- Generated on "04/25/2025 12:32:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ReCOP
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ReCOP_vhd_vec_tst IS
END ReCOP_vhd_vec_tst;
ARCHITECTURE ReCOP_arch OF ReCOP_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alu_reset : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL instruction : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL pc_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sip_in : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT ReCOP
	PORT (
	alu_reset : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	instruction : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	pc_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	sip_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ReCOP
	PORT MAP (
-- list connections between master ports and signals
	alu_reset => alu_reset,
	clock => clock,
	instruction => instruction,
	pc_out => pc_out,
	sip_in => sip_in
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
END ReCOP_arch;
