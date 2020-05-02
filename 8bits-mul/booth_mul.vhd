----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:58:11 04/22/2020 
-- Design Name: 
-- Module Name:    booth_mul - Behavioral 
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

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_signed.ALL;

ENTITY  booth_mul IS

	GENERIC (x : INTEGER := 7;
		      y : INTEGER := 7);
	
	PORT(
	     clk : in std_logic ;
		  rst : in std_logic ;
	     m : IN STD_LOGIC_VECTOR(x - 1 DOWNTO 0);
	     r : IN STD_LOGIC_VECTOR(y - 1 DOWNTO 0);
	     result : OUT STD_LOGIC_VECTOR(x + y - 1 DOWNTO 0));
		  
END  booth_mul;

ARCHITECTURE behavior OF  booth_mul IS

--      signal clk : std_logic ;
--      signal rst : std_logic ;


BEGIN
	
process (rst ,clk)


      CONSTANT X_ZEROS : STD_LOGIC_VECTOR(x - 1 DOWNTO 0) := (OTHERS => '0');
		CONSTANT Y_ZEROS : STD_LOGIC_VECTOR(y - 1 DOWNTO 0) := (OTHERS => '0');
		
		VARIABLE a, s, p : STD_LOGIC_VECTOR(x + y + 1 DOWNTO 0);
		VARIABLE mn      : STD_LOGIC_VECTOR(x - 1 DOWNTO 0);

    

		begin
		if rst='1' then
			result <= "0000000000000000" ;
	
	
   	elsif rising_edge(clk) then
		
		  a := (OTHERS => '0');
		  s := (OTHERS => '0');
		  p := (OTHERS => '0');

		IF (m /= X_ZEROS AND r /= Y_ZEROS) THEN
			
			a(x + y DOWNTO y + 1) := m;
			a(x + y + 1) := m(x - 1);
			
			mn := (NOT m) + 1;
			
			s(x + y DOWNTO y + 1) := mn;
			s(x + y + 1) := NOT(m(x - 1));
			
			p(y DOWNTO 1) := r;
			
			FOR i IN 1 TO y LOOP
				
				IF (p(1 DOWNTO 0) = "01") THEN
					p := p + a;
				ELSIF (p(1 DOWNTO 0) = "10") THEN
					p := p + s;
				END IF;
				
				-- Shift Right Arithmetic
				p(x + y DOWNTO 0) := p(x + y + 1 DOWNTO 1);
			
			END LOOP;
			
		END IF;
		
		result <= p(x + y DOWNTO 1);
end if;

END PROCESS;
			
				
	
END behavior;




















