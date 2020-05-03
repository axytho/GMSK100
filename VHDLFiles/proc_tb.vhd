--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:08:25 04/03/2020
-- Design Name:   
-- Module Name:   D:/ise/ise_crack/code/cordic/proc_tb.vhd
-- Project Name:  cordic
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sc_corproc
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

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all; 
-- library ieee_proposed;
-- use ieee_proposed.fixed_pkg.all;



ENTITY proc_tb IS
END proc_tb;
 
ARCHITECTURE rtl OF proc_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sc_corproc
    PORT(
         clk : IN  std_logic;
         ena : IN  std_logic;
         Ain : IN  signed(15 downto 0);
         sin : OUT signed(15 downto 0);
         cos : OUT  signed(15 downto 0)
			);
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0' ;
   signal ena : std_logic := '1' ;
   signal Ain : signed(15 downto 0); --A in is given as a fraction of pi

 	--Outputs
   signal sin : signed(15 downto 0);
   signal cos : signed(15 downto 0);
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sc_corproc PORT MAP (
          clk => clk,
          ena => ena,
          Ain => Ain,
          sin => sin,
          cos => cos
        );




Clk <= not Clk after 100 ps; 


  
stim_proc: process

begin		
   
Ain <= "0000101001000101" ;     -- 30 degree
wait for 2 ns;

end process;

END;
