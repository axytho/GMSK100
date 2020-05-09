library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
USE ieee.std_logic_signed.ALL;

entity testnc is
    Port ( rst,clk : in  STD_LOGIC;
	        clk_10ns : in std_logic;
          
			  ena : in std_logic;
  			 -- input_I : in  signed (7 downto 0);
			 -- input_Q : in  signed (7 downto 0);
			  input_signal : in std_logic_vector ( 7 downto 0);
			  
			  newValue: in  STD_LOGIC;
			  
			  sine_out : out std_logic_vector (7 downto 0);
			  cosine_out : out std_logic_vector (7 downto 0);
			  
			 -- filter_out_i: out std_logic_vector(7 downto 0); 
			--  filter_out_q :  out std_logic_vector (7 downto 0);
           df : out  std_logic_vector (15 downto 0)
			  
			 );
			  
end testnc;


architecture Behavioral of testnc is



component booth_mul 
      port(
      clk : in std_logic ;
		rst : in std_logic ;
	   m : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	   r : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	  result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
end component;


  component mul88
  port ( rst : in std_logic;
	       clk : in std_logic ;
	       a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	       b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	       result : OUT STD_LOGIC_VECTOR( 15 DOWNTO 0) );
 end component;
	

	COMPONENT LoopFilter
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		pd : IN  std_logic_vector(15 downto 0);          
		newf_ce : OUT std_logic;
		df : OUT  std_logic_vector (15 downto 0);          ---- loop filter output
		frequency : OUT std_logic_vector (19 downto 0));
	END COMPONENT;


	
--	COMPONENT nco
	--	PORT (
	--	clk: IN std_logic;
	--	we: IN std_logic;
	--	data: IN std_logic_VECTOR  ( 19 downto 0);      ----(31 downto 0); N= 20
	--	cosine: OUT std_logic_VECTOR(7 downto 0);
	--	sine: OUT std_logic_VECTOR(7 downto 0));
--	END COMPONENT;
	
	component dds	
	port (  clk : in std_logic ;
	      --rst : in std_logic;
			ena : in std_logic;
			new_fcw : in std_logic ;
			
	      delta : in std_logic_vector ( 19 downto 0) ;		
         sine	: out  std_logic_vector  ( 7 downto 0) ;  
		   cosine	: out  std_logic_vector( 7 downto 0) );		
end component;
	
	

	
	COMPONENT low_pass_filter_22
		PORT (
		     clk_10ns: in std_logic;
	        inputValue : in  signed (7 downto 0);       
           newValue: in  STD_LOGIC;
           outputValue : out  signed (7 downto 0);                      
           doneFull : out  STD_LOGIC );               		                                                 		 
	END COMPONENT;
	
	
	
	
	signal mult_i ,mult_q : std_logic_vector(15 downto 0);   
	
   signal mul_i , mul_q : signed(15 downto 0);
	
   signal input_i, input_q : signed (7 downto 0);
	
	signal filter_i_out, filter_q_out : signed (7 downto 0);
	--signal filter_i_in , filter_q_in : signed (7 downto 0);
	--signal new_value : std_logic ;                             
	
	
--	signal filter_i, filter_q : signed (7 downto 0);

	
   signal fil_i_out , fil_q_out: std_logic_vector(7 downto 0);
   
   
	
	signal done_full : std_logic ;
	
	
	signal pd : std_logic_vector (15 downto 0);

	signal newf_ce: std_logic;
	
	signal frequency:  std_logic_vector(19 downto 0);
	
	--signal freq_delta : std_logic_vector (19 downto 0);
	
   signal cos,sin:   std_logic_vector (7 downto 0);

   	
begin
   
   mul_i <= signed(mult_i);
	mul_q <= signed(mult_q);
	
	input_q <= mul_q (15 downto 8) ;
	input_i <= mul_i (15 downto 8) ;
	
	
--filter_i <= filter_out_i ;
--filter_q <= filter_out_q ;

fil_i_out <= std_logic_vector(filter_i_out);
fil_q_out <= std_logic_vector(filter_q_out);

   
	
--	filter_i_in <= input_I;
--	filter_q_in <= input_Q;
	
   sine_out <= sin;           ---- assign output
	cosine_out <= cos;

	
u0:  dds	port map (
     clk => clk ,
     ena => ena,
	  new_fcw =>newf_ce, 
	  delta => frequency,
     sine => sin, 
	  cosine =>cos);      
		
--	u1 : booth_mul port map(
               --   clk => clk,
						--rst => rst,
					--	m => input_signal,
                --  r => cos,
					--	result => mult_i);
						


--	u2 : booth_mul port map(
                --  clk => clk,
					--	rst => rst,
					--	m => input_signal,
                 -- r => sin,
						--result => mult_q);
	

	
	u1 : mul88 port map (      rst =>rst,
	                           clk => clk,
	                           a => input_signal,
	                           b => cos,
										result => mult_i );
	
	
	
	u2 : mul88 port map (      rst => rst,
	                           clk => clk,
	                           a => input_signal,
	                           b => sin,
								   	result => mult_q );
	
	
	
	u3: low_pass_filter_22 port map (
	
	clk_10ns => clk_10ns,
	inputValue => input_i ,
	newValue => newValue,
	outputValue => filter_i_out,
	doneFull => done_full );
	
	
	
	
	u4: low_pass_filter_22 port map (
	
	clk_10ns => clk_10ns,
	inputValue => input_q ,
	newvalue => newValue,
	outputValue => filter_q_out,
	doneFull => done_full );
	

u5_pd : booth_mul port map(
                  clk => clk,
						rst => rst,
					   m => fil_i_out,
                  r => fil_q_out,
					   result => pd );
	

   -- u5 : mul88 port map ( clk => clk,
		                    -- rst => rst,
	                        -- a => fil_i_out,
	                         --b => fil_q_out,
									 -- result => pd );
	
	u6: LoopFilter PORT MAP (
                clk => clk,
					 rst => rst,
					 pd => pd,
					 newf_ce => newf_ce,
					 df => df,
					 frequency => frequency);	


	
	
end Behavioral;