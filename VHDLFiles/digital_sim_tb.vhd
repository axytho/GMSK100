--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:56:50 04/22/2020
-- Design Name:   
-- Module Name:   /users/students/r0666113/Documents/gmsk100-digital/xilinx/vhdlGroup4FirstRun/digital_sim_tb.vhd
-- Project Name:  vhdlGroup4FirstRun
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: hann_filter
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY digital_sim_tb IS
END digital_sim_tb;
 
ARCHITECTURE behavior OF digital_sim_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT hann_filter
    PORT(
         clk : IN  std_logic;
         inputValue : IN  std_logic_vector(7 downto 0);
         newValue : IN  std_logic;
         outputValue : OUT  std_logic_vector(7 downto 0);
         doneFull : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal inputValue : std_logic_vector(7 downto 0) := (others => '0');
   signal newValue : std_logic := '0';

 	--Outputs
   signal outputValue : std_logic_vector(7 downto 0);
   signal doneFull : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: hann_filter PORT MAP (
          clk => clk,
          inputValue => inputValue,
          newValue => newValue,
          outputValue => outputValue,
          doneFull => doneFull
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- inser
		
		
		inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00010000" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00001001" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110011" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110000" 
 wait for 20000 ns 
 inputValue = "11110001" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110010" 
 wait for 20000 ns 
 inputValue = "11110100" 
 wait for 20000 ns 
 inputValue = "11110111" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110101" 
 wait for 20000 ns 
 inputValue = "11110110" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111011" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00000100" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111001" 
 wait for 20000 ns 
 inputValue = "11111000" 
 wait for 20000 ns 
 inputValue = "11111010" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111101" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111100" 
 wait for 20000 ns 
 inputValue = "11111110" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001000" 
 wait for 20000 ns 
 inputValue = "00000101" 
 wait for 20000 ns 
 inputValue = "00000010" 
 wait for 20000 ns 
 inputValue = "00000000" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "11111111" 
 wait for 20000 ns 
 inputValue = "00000001" 
 wait for 20000 ns 
 inputValue = "00000011" 
 wait for 20000 ns 
 inputValue = "00000110" 
 wait for 20000 ns 
 inputValue = "00001010" 
 wait for 20000 ns 
 inputValue = "00001100" 
 wait for 20000 ns 
 inputValue = "00001110" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001111" 
 wait for 20000 ns 
 inputValue = "00001101" 
 wait for 20000 ns 
 inputValue = "00001011" 
 wait for 20000 ns 
 inputValue = "00000111" 
 wait for 20000 ns 
 
		
      wait;
   end process;

END;
