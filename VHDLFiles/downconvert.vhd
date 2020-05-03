----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:41:48 03/30/2020 
-- Design Name: 
-- Module Name:    atan_cordic_full_circle - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;



entity downconvert is
    Port ( clk: in std_logic;
	        inputValue : in  signed (7 downto 0);
           newValue: in  STD_LOGIC; --newvalue should only be triggered once per clk, then switched off
           output_I : out  signed (7 downto 0);
			  output_Q : out  signed (7 downto 0);
           doneFull : out  STD_LOGIC);
end downconvert;

architecture Behavioral of downconvert is

signal multiplexedMultiplier: signed (3 downto 0) := to_signed(0, 4);
signal sinValue: signed (4 downto 0):= to_signed(0, 5);
signal cosValue: signed (4 downto 0):= to_signed(0, 5);
signal input: signed (15 downto 0) := to_signed(0,16);
signal accumulate: signed(11 downto 0):= to_signed(0,12);
begin


    process(clk) --no clock
	 begin
	 if clk'event and clk = '1' then
	   if newValue = '1' then
			if counter = "1001" then
				counter <= "0000";
				accumulate <= to_signed(0,12);
				outputValue <= resize(shift_right(accumulate,5), 8);
				doneFull <= '1';
			else
				counter <= counter + 1;
				doneFull <= '0';
			end if;
			if add='1' then
			   accumulate <= accumulate + multiplyResult; --accumulate should never overflow
			end if;
		end if;
    end if;
	 
	 
		if counter = "0000" or counter = "1001" then
		    add <= '0';
		else
          add <='1';
			 if counter = "0001" or counter = "1000" then
			     multiplexedMultiplier <= elementFour;
			 elsif counter = "0010" or counter = "0111" then
			     multiplexedMultiplier <= elementThree;
			 elsif counter = "0011" or counter = "0110" then
			     multiplexedMultiplier <= elementTwo;
			 elsif counter = "0100" or counter = "0101" then
			     multiplexedMultiplier <= elementOne;
			 end if;
      end if;			 
		
	   multiplyResult <= multiplexedMultiplier * inputValue;
	 
    end process;
end Behavioral;
