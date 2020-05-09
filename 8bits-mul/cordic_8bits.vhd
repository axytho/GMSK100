----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:28:51 05/07/2020 
-- Design Name: 
-- Module Name:    cordic_8bits - Behavioral 
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

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
USE ieee.std_logic_signed.ALL;

-- library ieee_proposed;
-- use ieee_proposed.fixed_pkg.all;




entity cordic_8bits is

	port(
		clk	: in std_logic;
		ena	: in std_logic;
		Ain	: in std_logic_vector(7 downto 0);      
		
		sin	: out std_logic_vector(7 downto 0);     
		cos	: out std_logic_vector(7 downto 0)     
		);

end cordic_8bits;




architecture Behavioral of cordic_8bits is


	constant PipeLength : natural := 7 ;   --- pipeline structure, iteration
	constant P :  std_logic_vector(7 downto 0) := x"4d";  


	component cordic_1 is
	generic(
		PIPELINE : integer := 7;
		WIDTH    : integer := 8
		);
		
	port(
		clk : in std_logic;
		ena : in std_logic;

		Xi : in  std_logic_vector(WIDTH -1 downto 0);
		Yi : in  std_logic_vector(WIDTH -1 downto 0) := (others => '0');
		Zi : in  std_logic_vector(WIDTH -1 downto 0);
		
		Xo : out  std_logic_vector(WIDTH -1 downto 0);
		Yo : out  std_logic_vector(WIDTH -1 downto 0)
	);
	end component cordic_1;






begin


	u1:	cordic_1	
			generic map(PIPELINE => PipeLength, WIDTH => 8)
			port map(clk => clk, ena => ena, Xi => P, Zi => Ain, Xo => cos, Yo => sin);
			


end Behavioral;



