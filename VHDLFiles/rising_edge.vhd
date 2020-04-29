----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:23:40 04/28/2020 
-- Design Name: 
-- Module Name:    rising_edge - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rising_edge_block is
    Port ( clk : in std_logic;
	        signal_in : in  STD_LOGIC;
           rising_edge_signal : out  STD_LOGIC);
end rising_edge_block;

architecture Behavioral of rising_edge_block is

signal prev_signal: STD_LOGIC:= '0';

begin
    process(clk)
	 begin
    if clk'event and clk = '1' then
	     prev_signal <= signal_in;
		  if prev_signal  = '0' and signal_in = '1' then
		      rising_edge_signal <= '1';
	     else
		      rising_edge_signal <= '0';
		  end if;
	 
	 end if;
    end process;
end Behavioral;

