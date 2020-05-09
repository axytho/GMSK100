----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:00:33 05/08/2020 
-- Design Name: 
-- Module Name:    dds - Behavioral 
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
use ieee.std_logic_arith.all;

USE ieee.std_logic_signed.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dds is

--generic(
		--dds_bit : integer := 20;
		--phase_bit : integer := 8 );

port (   clk : in std_logic ;
	      --rst : in std_logic;
			ena : in std_logic;
			
			new_fcw : in std_logic ;
			
	      delta : in   std_logic_vector( 19 downto 0) ;
			
         sine	: out   std_logic_vector ( 7 downto 0) ;  
		   cosine	: out  std_logic_vector ( 7 downto 0) );
			
end dds;



architecture Behavioral of dds is



component cordic_8bits

port(
		clk	: in std_logic;
		ena	: in std_logic;
		Ain	: in  std_logic_vector(7 downto 0);      
		
		sin	: out  std_logic_vector(7 downto 0);     
		cos	: out  std_logic_vector(7 downto 0)     
		);
end component cordic_8bits;


signal acc : std_logic_vector (19 downto 0) := (others=>'0') ;

signal phase_out :   std_logic_vector  ( 7 downto 0) ;

signal sin_out , cos_out :   std_logic_vector( 7 downto 0);

signal del :   std_logic_vector ( 19 downto 0) := B"01100110011001100110" ;




begin

   process (new_fcw)
	begin
	
	if rising_edge (new_fcw) then
	del <= delta;
	end if;
	end process;
	

	process(clk)
	begin
	
	--if rst = '0' then
	 --  acc <= (others=>'0');
	
	if rising_edge(clk) then
	acc <= acc + del ;
	phase_out <= acc (19 downto 12);

	end if;
	
	end process;
	
	
	
	uut1 :  cordic_8bits
	       port map(clk => clk, ena => ena, Ain => phase_out, sin => sin_out , cos => cos_out );
	
	
	sine <= sin_out ;
   cosine <= cos_out ;


end Behavioral;





