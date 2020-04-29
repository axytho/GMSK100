library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

entity clock_generator is
	port(
		clk_ext: in std_logic;
		clk: out std_logic
	);
end clock_generator;

architecture bhv of clock_generator is
	
	signal enable: std_logic_vector(3 downto 0) := "0000";
	
begin
	
	bufgce_clk: BUFGCE port map (
	    I => clk_ext,
	    O => clk,
		CE => enable(3)
	);
	
	process(clk_ext)
	begin
		if clk_ext'event and clk_ext = '1' then
			enable(3 downto 1) <= enable(2 downto 0);
			enable(0) <= '1';
		end if;
	end process;
	
end bhv;
