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


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_counter is

 Port (    rst : in std_logic;
			  clk : in std_logic ;
			  input_I : in signed(7 downto 0) ;
	        input_Q : in signed(7 downto 0) ;
			  newValue : in std_logic ;
		     done_diff : out std_logic ;
			  
			--  clk20us : in std_logic;
           c0, c1 : out integer range 0 to 50;
			  done_symbol : out std_logic;
		     output_value :out std_logic );

end top_counter;


architecture Behavioral of top_counter is


COMPONENT full_simulation
	PORT(
		clk : in std_logic ;
      input_I : in signed(7 downto 0) ;
	   input_Q : in signed(7 downto 0) ;
      newValue : in std_logic ;
		done_diff : out std_logic;
	   output_diff : out signed(7 downto 0));
	END COMPONENT;


	COMPONENT counter
	PORT(
		newvalue : IN std_logic;
		rst : IN std_logic;
		datainput : in signed (7 downto 0) ;
      c0, c1 : out integer range 0 to 50 ; 
		done_symbol : out std_logic;
		output_value :out std_logic
		
		);
	
	END COMPONENT;


signal datain : signed (7 downto 0) ;



begin


	uut0: full_simulation PORT MAP(
	                        clk => clk ,
                           input_I => input_I ,
	                        input_Q => input_Q ,
                           newValue => newValue ,
		                     done_diff => done_diff ,
	                        output_diff => datain );
									
	uut1: counter PORT MAP(newvalue => newvalue,
	                        rst => rst,
									datainput => datain,
									c0 => c0,
									c1 => c1);


end Behavioral;

