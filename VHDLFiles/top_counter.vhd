----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:40:15 04/30/2020 
-- Design Name: 
-- Module Name:    top_counter - Behavioral 
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

USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;



entity top_counter is

 Port (    
			  clk : in std_logic ;
			  input_I : in signed(7 downto 0) ;
	        input_Q : in signed(7 downto 0) ;
			  newValue : in std_logic ;
			  
			--  clk20us : in std_logic;
			  done : out std_logic;
		     output_value :out std_logic;
			  ascii_byte: out  std_logic_vector(6 downto 0));

end top_counter;


architecture Behavioral of top_counter is






signal datain : signed (7 downto 0) ;
signal done_diff: std_logic;
signal done_symbol: std_logic;
signal output_of_sync: std_logic;

begin
--
   output_value <= output_of_sync;
	uut0: entity work.full_simulation PORT MAP(
	                        clk => clk ,
                           input_I => input_I ,
	                        input_Q => input_Q ,
                           newValue => newValue ,
		                     done_diff => done_diff ,
	                        output_diff => datain );

 									
	counterDataSync: entity work.counter PORT MAP(--
	                        clk => clk ,
									newValue => done_diff,
									datainput => datain,
									done_symbol => done_symbol,
								   output_value => output_of_sync
									);
									
   varicode: entity work.varicode_decoder PORT MAP (
          clk => clk,
          bitClock => done_symbol,
          dataBit => output_of_sync,
          asciiByte => ascii_byte,
          done => done
        );

end Behavioral;

