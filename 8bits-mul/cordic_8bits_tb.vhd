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


ENTITY cordic_tb IS
END cordic_tb;
 
ARCHITECTURE rtl OF cordic_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cordic_8bits
    PORT(
         clk : IN  std_logic;
         ena : IN  std_logic;
         Ain : IN  signed(7 downto 0);
         sin : OUT signed(7 downto 0);
         cos : OUT  signed(7 downto 0)
			);
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '1' ;
   signal ena : std_logic := '1' ;
   signal Ain : signed(7 downto 0);

 	--Outputs
   signal sin : signed(7 downto 0);
   signal cos : signed(7 downto 0);
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cordic_8bits PORT MAP (
          clk => clk,
          ena => ena,
          Ain => Ain,
          sin => sin,
          cos => cos
        );




Clk <= not Clk after 10 us; 


  
stim_proc: process

begin		
   

Ain <= "00110101" ;     --45 "00110101"
wait for 20 us;


--Ain <= "11011111" ;     --60 00101010 
--wait for 2 ns;


Ain <= "01100010"  ;        --01100010
wait for 20 us;

Ain <= "10100010" ;      --"10100010" 
wait for 20 us;


--Ain <= "11100100" ;     
--wait for 20 us;


--Ain <= "01100110" ;     --144
--wait for 20 us;


--Ain <= "11001100" ;     --288
--wait for 20 us;


--Ain <= "00110011" ;  --72   
--wait for 20 us;



end process;

END;

