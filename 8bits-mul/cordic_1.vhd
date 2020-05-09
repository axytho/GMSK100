----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:29:32 05/07/2020 
-- Design Name: 
-- Module Name:    cordic_1 - Behavioral 
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


entity cordic_1 is

	generic(
		PIPELINE : integer := 7;
		WIDTH    : integer := 8);
	port(
		clk	: in std_logic;
		ena : in std_logic;

		Xi	: in std_logic_vector(WIDTH -1 downto 0);
		Yi : in std_logic_vector (WIDTH -1 downto 0) := (others => '0');
		Zi	: in std_logic_vector(WIDTH -1 downto 0);
		
		Xo	: out std_logic_vector(WIDTH -1 downto 0);
		Yo	: out std_logic_vector(WIDTH -1 downto 0)
	);

end cordic_1;


architecture Behavioral of cordic_1 is

	
	type XYVector is array(PIPELINE downto 0) of std_logic_vector(WIDTH -1 downto 0);
	type ZVector is array(PIPELINE downto 0) of std_logic_vector(11 downto 0);
	type quadVector is array(PIPELINE downto 0) of unsigned(1 downto 0);
	
   
	component cordicPipe
	generic(
		WIDTH 	: natural := 8;
		PIPEID	: natural := 1
	);
	port(
		clk		: in std_logic;
		ena		: in std_logic;

		Xi		: in std_logic_vector(WIDTH -1 downto 0); 
		Yi		: in std_logic_vector(WIDTH -1 downto 0);
		Zi		: in std_logic_vector(11 downto 0);

		Xo		: out std_logic_vector(WIDTH -1 downto 0);
		Yo		: out std_logic_vector (WIDTH -1 downto 0);
		Zo		: out std_logic_vector(11 downto 0)
	);
	end component cordicPipe;



	signal X, Y	: XYVector;
	signal Z	: ZVector;
	signal quadrant : quadVector;
	
   signal quad: unsigned (1 downto 0);	
   signal Zin : std_logic_vector(7 downto 0);
	constant Zdec2 :  std_logic_vector(7 downto 0) := x"40";
	constant Zdec3 :  std_logic_vector(7 downto 0) := x"80";
	constant Zdec4 :  std_logic_vector(7 downto 0) := x"C0";
	

begin

  X(0) <= Xi;
  Y(0) <= Yi;

 
-- quad <= unsigned(Z(0)(Z(0)'high downto Z(0)'high-1));
--	quad <= unsigned(Zi(Zi'high downto Zi'high-1));
	
--process(Zi)
--begin
   
--	if quad = 1 then
--	Zin <= Zi - Zdec; 
 --  Z(0)(11 downto 4) <= Zin;

--	elsif quad = 2 then
	--Zin <= Zi + Zdec; 
  -- Z(0)(11 downto 4) <= Zin;
	
	--else
--	Z(0)(11 downto 4) <= Zi;
--	end if;
	
--end process;

quad <= unsigned(zi(zi'high downto zi'high-1));




process(clk)
begin

if rising_edge(clk) then
 
case quad is

  when "00" =>   Zin <= Zi;
  when "01" =>   Zin <= Zi - Zdec2;
  when "10" =>   Zin <= Zi - Zdec3;
  when "11" =>   Zin <= Zi - Zdec4;
  when others => Zin <= "00000000";
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


Z(0)(11 downto 4) <= Zin;
Z(0)(3 downto 0) <= (others => '0');


	gen_pipe:
	for n in 1 to PIPELINE generate
	
		Pipe: cordicPipe 
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
  
  when others => Xo <= "00000000";
	              Yo <= "00000000";
 
end case;

end if;

end process;




end Behavioral;


