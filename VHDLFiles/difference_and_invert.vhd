----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:57:59 04/28/2020 
-- Design Name: 
-- Module Name:    difference_and_invert - Behavioral 
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity difference_and_invert is
-- we will receive an angle between pi and -pi
    Port ( clk: in std_logic;
	        inputValue : in  signed (7 downto 0);
           newValue: in  STD_LOGIC; --newvalue should only be triggered once per clk, then switched off
           outputValue : out  signed (7 downto 0);
           doneFull : out  STD_LOGIC);
end difference_and_invert;

architecture Behavioral of difference_and_invert is

signal prev_signal: signed (7 downto 0):= to_signed(0, 8);
signal difference: signed (9 downto 0):= to_signed(0, 10);
signal upperCheck: signed (9 downto 0):= to_signed(0, 10);
signal lowerCheck: signed (9 downto 0):= to_signed(0, 10);
begin
    process(clk)
	 begin
	 difference <= resize(prev_signal, 10) - resize(inputValue, 10); --10 because doing -2pi + epsilon - pi would overflow upperCheck
	 upperCheck <= difference - "0001100101";
	 lowerCheck <= difference + "0001100101";
    if clk'event and clk = '1' then
	     if newValue = '1' then 
		     doneFull <= '1';
			  prev_signal <= inputValue;
			  if upperCheck(9)  = '0' then --if the difference is larger than pi, difference should be decrease by 2pi, cause diff = 2pi - epsilon 
					outputValue <= resize(difference - "0011001001", 8);
			  elsif lowerCheck(9)  = '1' then
					outputValue <= resize(difference + "0011001001", 8);
			  else
					outputValue <= resize(difference, 8);
			  end if;
		  else
		      doneFull <= '0';
		  end if;
	     
	 end if;
    end process;
end Behavioral;

