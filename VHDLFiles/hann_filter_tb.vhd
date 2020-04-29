--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:58:37 04/21/2020
-- Design Name:   
-- Module Name:   /users/students/r0666113/Documents/gmsk100-digital/xilinx/vhdlGroup4FirstRun/hann_filter_tb.vhd
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
USE ieee.numeric_std.ALL;
 
ENTITY hann_filter_tb IS
END hann_filter_tb;
 
ARCHITECTURE behavior OF hann_filter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT hann_filter
    PORT(
         clk : IN  std_logic;
         inputValue : IN  signed(7 downto 0);
         newValue : IN  std_logic;
         outputValue : OUT  signed(7 downto 0);
         doneFull : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal inputValue : signed(7 downto 0) := "00000000";
   signal newValue : std_logic := '0';

 	--Outputs
   signal outputValue : signed(7 downto 0);
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
		
		inputValue <= "00100000";
		newValue <= '1';
		wait for clk_period;
		newValue <= '0';
		wait for clk_period*10;
		inputValue <= "00100000";
		newValue <= '1';
		wait for clk_period;
		newValue <= '0';
		wait for clk_period*10;
		inputValue <= "00100000";
		newValue <= '1';
		wait for clk_period;
		newValue <= '0';
		wait for clk_period*10;
		inputValue <= "01000000"; --multiplied by 2, only first result will be correct because the process starts running again, and there is no clear input
		newValue <= '1';
		wait for clk_period;
		newValue <= '0';
		wait for clk_period*10;
		inputValue <= "00100000";
		newValue <= '1';
		wait for clk_period;
		newValue <= '0';
		wait for clk_period*10;
		inputValue <= "00100000";
		newValue <= '1';
		wait for clk_period;
		newValue <= '0';
		wait for clk_period*10;
		inputValue <= "00100000";
		newValue <= '1';
		wait for clk_period;
		newValue <= '0';
		wait for clk_period*10;
		inputValue <= "00100000";
		newValue <= '1';
		wait for clk_period;
		newValue <= '0';
		wait for clk_period*10;
		inputValue <= "00100000";
		newValue <= '1';
		wait for clk_period;
		newValue <= '0';
		wait for clk_period*10;
		inputValue <= "00100000";
		newValue <= '1';
		wait for clk_period;
		newValue <= '0';
		wait for clk_period*10;
		inputValue <= "00100000";
		newValue <= '1';
		wait for clk_period;
		newValue <= '0';
		wait for clk_period*10;
   end process;

END;
