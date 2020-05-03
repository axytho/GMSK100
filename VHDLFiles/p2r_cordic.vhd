----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:19:13 04/03/2020 
-- Design Name: 
-- Module Name:    p2r_cordic - rtl 
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


--library ieee_proposed;
--use ieee_proposed.fixed_pkg.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity p2r_cordic is 
	generic(
		PIPELINE : integer := 15;
		WIDTH    : integer := 16);
	port(
		clk	: in std_logic;
		ena : in std_logic;

		Xi	: in signed(WIDTH -1 downto 0);
		Yi : in signed(WIDTH -1 downto 0) := (others => '0');
		Zi	: in signed(WIDTH -1 downto 0);
		
		Xo	: out signed(WIDTH -1 downto 0);
		Yo	: out signed(WIDTH -1 downto 0)
	);
end entity p2r_Cordic;


architecture rtl of p2r_cordic is

	
	type XYVector is array(PIPELINE downto 0) of signed(WIDTH -1 downto 0);
	type ZVector is array(PIPELINE downto 0) of signed(19 downto 0);


	component p2r_cordicPipe
	generic(
		WIDTH 	: natural := 16;
		PIPEID	: natural := 1
	);
	port(
		clk		: in std_logic;
		ena		: in std_logic;

		Xi		: in signed(WIDTH -1 downto 0); 
		Yi		: in signed(WIDTH -1 downto 0);
		Zi		: in signed(19 downto 0);

		Xo		: out signed(WIDTH -1 downto 0);
		Yo		: out signed(WIDTH -1 downto 0);
		Zo		: out signed(19 downto 0)
	);
	end component p2r_cordicPipe;



	signal X, Y	: XYVector;
	signal Z	: ZVector;


begin
	
	X(0) <= Xi;


	Y(0) <= Yi;

	Z(0)(19 downto 4) <= Zi;
	Z(0)(3 downto 0) <= (others => '0');

	
	-- generate pipeline
	
	gen_pipe:
	for n in 1 to PIPELINE generate
		Pipe: p2r_cordicPipe 
			generic map(WIDTH => WIDTH, PIPEID => n -1)
			port map ( clk, ena, X(n-1), Y(n-1), Z(n-1), X(n), Y(n), Z(n) );
	end generate gen_pipe;

	--
	-- assign outputs
	--
	Xo <= X(PIPELINE);
	Yo <= Y(PIPELINE);
	
end rtl;




