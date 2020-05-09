----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:30:02 05/07/2020 
-- Design Name: 
-- Module Name:    cordicPipe - Behavioral 
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

entity cordicpipe is 
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
		Yo		: out std_logic_vector(WIDTH -1 downto 0);
		Zo		: out std_logic_vector(11 downto 0)
	);
end entity cordicpipe;

architecture Behavioral of cordicpipe is



	--pre-calculated arc-tangents.
	-- 'n' is the number of the pipe. Z(n) = atan(1/2^n)
	-- 20bit values ,  1(rad) = 2^20/2pi = 166886.053....
	-- n:0, atan(1/1) = 0.7853...(rad)
	--      0.7853 * 166886.053 = 131072(dec) = 20000(hex)
	-- n:1, atan(1/2) = 0.4636...(rad)
	--      0.4636 * 166886.053... = 77376.32(dec) = 12E40(hex)
	
	
	function CATAN(n :natural) return integer is
	variable result	:integer;
	begin
		case n is
			when 0 => result := 16#0200#;
			when 1 => result := 16#012E#;
			when 2 => result := 16#09F#;
			when 3 => result := 16#051#;
			when 4 => result := 16#028#;
			when 5 => result := 16#014#;
			when 6 => result := 16#0A#;
			when 7 => result := 16#05#;
			when 8 => result := 16#02#;
			when 9 => result := 16#01#;
			when others => result := 16#0#;
		end case;
		return result;
	end CATAN;

	--  shift right

	function Delta(Arg : std_logic_vector; Cnt : natural) return std_logic_vector is
		variable tmp : std_logic_vector(Arg'range);
		
		constant lo : integer := Arg'high -cnt +1;
	begin
		for n in Arg'high downto lo loop
			tmp(n) := Arg(Arg'high);
		end loop;
		
		for n in Arg'high -cnt downto 0 loop
			tmp(n) := Arg(n +cnt);
		end loop;
		return tmp;
	end function Delta;
	

	function AddSub(dataa, datab : in std_logic_vector; add_sub : in std_logic) return std_logic_vector is
	begin
		if (add_sub = '1') then
			return dataa + datab;
		else
			return dataa - datab;
		end if;
	end;


	signal dX, Xresult	: std_logic_vector(WIDTH -1 downto 0);
	signal dY, Yresult	: std_logic_vector(WIDTH -1 downto 0);
	signal atan, Zresult	: std_logic_vector(11 downto 0);

	signal Zneg, Zpos	: std_logic;
	
begin

	dX <= Delta(Xi, PIPEID);
	dY <= Delta(Yi, PIPEID);
	atan <= conv_std_logic_vector( catan(PIPEID), 12);




	Zneg <= Zi(11);
	Zpos <= not Zi(11);

   Xresult <= AddSub(Xi, dY, Zneg);

	Yresult <= AddSub(Yi, dX, Zpos);

	Zresult <= AddSub(Zi, atan, Zneg);

	gen_regs: process(clk)
	begin
		if(clk'event and clk='1') then
			if (ena = '1') then
				Xo <= Xresult;
				Yo <= Yresult;
				Zo <= Zresult;
			end if;
		end if;
	end process;

end Behavioral;

