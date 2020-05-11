----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:20:37 05/09/2020 
-- Design Name: 
-- Module Name:    p2r_cordic - Behavioral 
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
--
--	VHDL implementation of cordic algorithm
--
-- File: p2r_cordic.vhd
-- author: Richard Herveille
-- rev. 1.0 initial release
--

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

	--
	--	TYPE defenitions
	--
	type XYVector is array(PIPELINE downto 0) of signed(WIDTH -1 downto 0);
	type ZVector is array(PIPELINE downto 0) of signed(19 downto 0);
   type quadVector is array(PIPELINE downto 0) of unsigned (1 downto 0);

	--
	--	COMPONENT declarations
	--
	component p2r_CordicPipe
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
	end component p2r_CordicPipe;

	--
	--	SIGNALS
	--
	signal X, Y	: XYVector;
	signal Z	: ZVector;
	signal quadrant : quadVector;
	
   signal quad: unsigned (1 downto 0);	
   signal Zin : signed(15 downto 0);
	constant Zdec2 :  signed(15 downto 0) := x"4000";
	constant Zdec3 :  signed(15 downto 0) := x"8000";
	constant Zdec4 :  signed(15 downto 0) := x"c000";

begin

  X(0) <= Xi;
  Y(0) <= Yi;

 

quad <= unsigned(zi(zi'high downto zi'high-1));



process(clk)
begin

if rising_edge(clk) then
 
case quad is

  when "00" =>   Zin <= Zi;
  when "01" =>   Zin <= Zi - Zdec2;
  when "10" =>   Zin <= Zi - Zdec3;
  when "11" =>   Zin <= Zi - Zdec4;
  when others => Zin <= "0000000000000000";
end case;

end if;

end process;


process(clk)
begin
  
   if rising_edge(clk) then
 
   quadrant(0) <= quad; 
	
   for i in 1 to PIPELINE loop	
   quadrant(i) <= quadrant(i-1); 
	
   end loop;  
 
end if;

end process;


Z(0)(19 downto 4) <= Zin;
Z(0)(3 downto 0) <= (others => '0');


	gen_pipe:
	for n in 1 to PIPELINE generate
	
		Pipe: p2r_cordicPipe 
			generic map(WIDTH => WIDTH, PIPEID => n -1)
			port map ( clk, ena, X(n-1), Y(n-1), Z(n-1), X(n), Y(n), Z(n) );
			
	end generate gen_pipe;

	
	-- assign outputs
	
process(clk)
begin

if rising_edge(clk) then	
case quadrant(pipeline) is

  when "00" =>   Xo <= X(PIPELINE);
	              Yo <= Y(PIPELINE);
					  
  when "01" =>   Xo <= -Y(PIPELINE);
	              Yo <= X(PIPELINE) ;
					  
  when "10" =>  Xo <= -X(PIPELINE) ;
	             Yo <= -Y(PIPELINE);
					  
  when "11" =>   Xo <= Y(PIPELINE);
	              Yo <= -X(PIPELINE);
  
  when others => Xo <= "0000000000000000";
	              Yo <= "0000000000000000";
  
end case;

end if;

end process;




end rtl;















