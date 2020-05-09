----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:42:33 05/08/2020 
-- Design Name: 
-- Module Name:    mul88 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_signed.ALL;


entity mul88 is

PORT(
        rst : in std_logic;
	     clk : in std_logic ;
	     a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	     b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	     result : OUT STD_LOGIC_VECTOR( 15 DOWNTO 0) );
		  
end mul88;

architecture Behavioral of mul88 is

begin



process(rst,clk)
begin

		if rst='1' then
			result <= "0000000000000000" ;
	


elsif rising_edge(clk) then

result <= a * b;

end if;

end process;




end Behavioral;

