--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:18:12 05/08/2020
-- Design Name:   
-- Module Name:   D:/ise/ise_crack/code/testnco/dds_tb.vhd
-- Project Name:  testnco
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dds
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
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_SIGNED.ALL;

ENTITY dds_tb IS
END dds_tb;
 
ARCHITECTURE behavior OF dds_tb IS 
 
 
    COMPONENT dds
    PORT(
         clk : IN  std_logic;
       --  rst : IN  std_logic;
         ena : IN  std_logic;
         new_fcw : IN  std_logic;
         delta : IN  std_logic_vector(19 downto 0);
			
         sine : OUT  std_logic_vector (7 downto 0);
         cosine : OUT  std_logic_vector (7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
  -- signal rst : std_logic := '1';
   signal ena : std_logic := '1';
	
   signal new_fcw : std_logic := '0';
   signal delta : std_logic_vector (19 downto 0) := B"01100110011001100110" ;

 	--Outputs
   signal sine : std_logic_vector (7 downto 0);
   signal cosine : std_logic_vector (7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 us;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dds PORT MAP (
          clk => clk,
          ena => ena,
          new_fcw => new_fcw,
          delta => delta,
          sine => sine,
          cosine => cosine
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
   end process;
 

  new_fcw_process :process
   begin
		new_fcw <= '0';
		wait for 140 us;
		new_fcw <= '1';
		wait for 20 us;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
  
   delta <= "01100110011001100110";
   wait for 160 us; 

   delta <= "01100110011001100111";
   wait for 160 us; 

   delta <= "01100110011001100010";
   wait for 160 us; 

   end process;

END;
