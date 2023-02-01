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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "11/14/2022 15:22:25"
                                                            
-- Vhdl Test Bench template for design  :  VGA
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY VGA_vhd_tst IS
END VGA_vhd_tst;
ARCHITECTURE VGA_arch OF VGA_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Bl : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CLK_I : STD_LOGIC;
SIGNAL G : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL hsync : STD_LOGIC;
SIGNAL R : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL RST : STD_LOGIC;
SIGNAL vga_blank_n : STD_LOGIC;
SIGNAL vga_sync_n : STD_LOGIC;
SIGNAL vsync : STD_LOGIC;
COMPONENT VGA
	PORT (
	Bl : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	CLK_I : IN STD_LOGIC;
	G : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	hsync : OUT STD_LOGIC;
	R : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	RST : IN STD_LOGIC;
	vga_blank_n : OUT STD_LOGIC;
	vga_sync_n : OUT STD_LOGIC;
	vsync : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : VGA
	PORT MAP (
-- list connections between master ports and signals
	Bl => Bl,
	CLK_I => CLK_I,
	G => G,
	hsync => hsync,
	R => R,
	RST => RST,
	vga_blank_n => vga_blank_n,
	vga_sync_n => vga_sync_n,
	vsync => vsync
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list 
RST <= '0';
clk_I <= '0';
wait for 10 ns;
clk_I <= not clk_I;
wait for 10 ns;

		  
--WAIT;                                                        
END PROCESS always;                                          
END VGA_arch;
