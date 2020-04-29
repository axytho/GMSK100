--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:18:44 04/29/2020
-- Design Name:   
-- Module Name:   /users/students/r0666113/Documents/gmsk100-digital/xilinx/vhdlGroup4FirstRun/difference_and_invert_tb.vhd
-- Project Name:  vhdlGroup4FirstRun
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: difference_and_invert
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
 
ENTITY difference_and_invert_tb IS
END difference_and_invert_tb;
 
ARCHITECTURE behavior OF difference_and_invert_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT difference_and_invert
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
   signal inputValue : signed(7 downto 0) := (others => '0');
   signal newValue : std_logic := '0';

 	--Outputs
   signal outputValue : signed(7 downto 0);
   signal doneFull : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut2: difference_and_invert PORT MAP (
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
	
	newValue_process :process
   begin
		newValue <= '0';
		wait for 19990 ns;
		newValue <= '1';
		wait for 10 ns;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;
		inputValue <= "00100000";
		wait for 20 us;
		inputValue <= "00110010";
		wait for 20 us;
		inputValue <= "01100000";
		wait for 20 us;
		inputValue <= "10100000";
		wait for 20 us;
		inputValue <= "11100100";
		wait for 20 us;

      -- insert stimulus here 

      wait;
   end process;

END;
