--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:16:49 04/22/2020
-- Design Name:   
-- Module Name:   D:/ise/ise_crack/code/mul/mul_tb.vhd
-- Project Name:  mul
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: booth_mul
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
USE ieee.std_logic_signed.ALL;


ENTITY mul_tb IS
END mul_tb;
 
ARCHITECTURE behavior OF mul_tb IS 
 
    
    COMPONENT booth_mul
	 
	 GENERIC (x : INTEGER := 8;
		       y : INTEGER := 8);
	
	 PORT(
	      clk : in std_logic ;
		   rst : in std_logic ;
 	      m : IN STD_LOGIC_VECTOR(x - 1 DOWNTO 0);
	      r : IN STD_LOGIC_VECTOR(y - 1 DOWNTO 0);
	     result : OUT STD_LOGIC_VECTOR(x + y - 1 DOWNTO 0));
		  
    END COMPONENT;
    
 
 
   constant x : integer := 8;
	constant y : integer := 8;
	signal m : STD_LOGIC_VECTOR(7 DOWNTO 0) ;
	signal r : STD_LOGIC_VECTOR(7 DOWNTO 0) ;
   
	signal result :  STD_LOGIC_VECTOR(15 DOWNTO 0) ;
   
	
	signal rst :  std_logic := '1' ;
   signal clk :  std_logic := '0' ;


			  
BEGIN

	
   uut: booth_mul 
	
	generic map ( x => x ,
	              y => y )
	             

	PORT MAP (  
	            rst => rst ,
					clk => clk ,
					m => m ,
	            r => r ,
					result => result );

rst <= not rst after 10 ns ;

clk <= not clk after 1 ns; 
  
stim_proc: process

begin		
   
m <= "11000011" ;    
r <= "00011100" ;
wait for 2 ns;

m <= "00000100" ;
r <= "00011100" ;
wait for 2 ns;

end process;



END;
