library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debouncer is
	port(
		clk: in std_logic;
		input: in std_logic;
		output: out std_logic
	);
end debouncer;

architecture bhv of debouncer is
	
	signal counter: unsigned(19 downto 0) := to_unsigned(0, 20);
	signal reg: std_logic := '0';
	
begin
	
	output <= reg;
	
	process(clk)
	begin
		if clk'event and clk = '1' then
			if input = reg then
				counter <= to_unsigned(0, 20);
			elsif counter = (19 downto 0 => '1') then
				counter <= to_unsigned(0, 20);
				reg <= input;
			else
				counter <= counter + 1;
			end if;
		end if;
	end process;
	
end bhv;
