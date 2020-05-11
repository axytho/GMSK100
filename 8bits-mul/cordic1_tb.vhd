
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:30:47 05/07/2020
-- Design Name:   
-- Module Name:   D:/ise/ise_crack/code/testnco/cordic_8bits_tb.vhd
-- Project Name:  testnco
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: cordic_8bits
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


ENTITY cordic1_tb IS
END cordic1_tb;
 
ARCHITECTURE rtl OF cordic1_tb IS 
 
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
   signal clk : std_logic := '1' ;
   signal ena : std_logic := '1' ;
   signal Ain : signed(15 downto 0);

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




Clk <= not Clk after 10 us; 

  
stim_proc: process

begin		
   

--Ain <= "0001010101010101" ;     --30
--wait for 20 us;



--Ain <= "0110011100011100" ;   --145
--wait for 20 us;

--Ain <= "1010011100011100" ;    -- 235
--wait for 20 us;

--Ain <= "1101111111111111" ;    -- 315
--wait for 20 us;

Ain <= "1110011100011100" ;    -- 335
wait for 20 us;


--Ain <= "1110011100011100" ;    -- 345
--wait for 20 us;



end process;

END;

