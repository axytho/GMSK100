----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:12:39 04/03/2020 
-- Design Name: 
-- Module Name:    sc_corproc - rtl 
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

-- library ieee_proposed;
-- use ieee_proposed.fixed_pkg.all;



entity sc_corproc is
	port(
		clk	: in std_logic;
		ena	: in std_logic;
		Ain	: in signed(15 downto 0);      --in sfixed  ( 2 downto -5);
		
		sin	: out signed(15 downto 0);     --out sfixed  ( 2 downto -5);
		cos	: out signed(15 downto 0)     --out sfixed  ( 2 downto -5)
		);
		
end entity sc_corproc;





architecture rtl of sc_corproc is


	constant PipeLength : natural := 15 ;   --- pipeline structure, iteration
	constant P :  signed(15 downto 0) := x"4dba";  ---sfixed  ( 2 downto -5) := b"01001101";	-- define input x initial constant; 2**15 / 1.6467



	component p2r_cordic is
	generic(
		PIPELINE : integer := 15;
		WIDTH    : integer := 16
		);
		
	port(
		clk : in std_logic;
		ena : in std_logic;

		Xi : in signed(WIDTH -1 downto 0);
		Yi : in signed(WIDTH -1 downto 0) := (others => '0');
		Zi : in signed(WIDTH -1 downto 0);
		
		Xo : out signed(WIDTH -1 downto 0);
		Yo : out signed(WIDTH -1 downto 0)
	);
	end component p2r_cordic;

begin
	u1:	p2r_cordic	
			generic map(PIPELINE => PipeLength, WIDTH => 16)
			port map(clk => clk, ena => ena, Xi => P, Zi => Ain, Xo => cos, Yo => sin);
			
end architecture rtl;











