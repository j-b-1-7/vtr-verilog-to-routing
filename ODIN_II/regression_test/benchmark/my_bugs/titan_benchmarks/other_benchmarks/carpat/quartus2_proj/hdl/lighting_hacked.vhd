--29 cycles
--**** lighting.vhd ***
-----------------------------------------
-- Given a triangle (a vertex and two edges) and a point on triangle, find the color at that point.\ using phong lighting.
-----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
entity lighting is
generic (
	COLOR_WIDTH : natural;
	VERTEX_FRAC_WIDTH : natural;
	VERTEX_DATA_WIDTH : natural;
	VERTEX_WORD_LENGTH : natural;
	BARY_FRAC_WIDTH : natural;
	BARY_DATA_WIDTH : natural;
	BARY_WORD_LENGTH : natural	
);
port(
	Px,Py,Pz : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
	tri_normal_x,tri_normal_y,tri_normal_z : in std_logic_vector(BARY_WORD_LENGTH-1 downto 0);		
	lightx, lighty, lightz : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);	
	rin, gin, bin : in std_logic_vector(COLOR_WIDTH-1 downto 0);
	rout, gout, bout : out std_logic_vector(COLOR_WIDTH-1 downto 0);
	clk : in std_logic);
end;
architecture rtl of lighting is

	component normalize is
	generic (
		VERTEX_WORD_LENGTH : natural;
		RESULT_FRAC_WIDTH : natural;
		RESULT_DATA_WIDTH : natural;
		RESULT_WORD_LENGTH : natural		);
	port(
		Ax,Ay,Az : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
		Px,Py,Pz : out std_logic_vector(RESULT_WORD_LENGTH-1 downto 0);
		clk	: in std_logic);
	end component;
	
	component dotproduct is
	generic (
	widthA : natural;
	widthB : natural);
	port(
	Ax,Ay,Az : in std_logic_vector(widthA-1 downto 0);
	Bx,By,Bz : in std_logic_vector(widthB-1 downto 0);
	C : out std_logic_vector(widthA+widthB+1 downto 0);
	clk : in std_logic);
	end component;

	component vectsub is
	generic (
	width : natural);
	port(
	Ax,Ay,Az : in std_logic_vector(width-1 downto 0);
	Bx,By,Bz : in std_logic_vector(width-1 downto 0);
	Cx,Cy,Cz : out std_logic_vector(width downto 0);
	clk : in std_logic);
	end component;

	signal Lx,Ly,Lz : std_logic_vector(VERTEX_WORD_LENGTH downto 0);
	signal NLx,NLy,NLz : std_logic_vector(BARY_WORD_LENGTH-1 downto 0);
	signal n_dot_l : std_logic_vector(2*BARY_WORD_LENGTH + 1 downto 0);
	signal sig_Tn_dot_l : std_logic_vector(BARY_WORD_LENGTH - 1 downto 0);
	signal processed_Tn_dot_l : std_logic_vector(BARY_WORD_LENGTH - 1 downto 0);
	signal full_rin, full_gin, full_bin : std_logic_vector(VERTEX_WORD_LENGTH - 1 downto 0);
	signal new_full_rin, new_full_gin, new_full_bin : std_logic_vector(VERTEX_WORD_LENGTH+BARY_WORD_LENGTH - 1 downto 0);

	component vectdelay is
	generic (
	width : natural;
	depth : natural);
	port(
	xin,yin,zin : in std_logic_vector(width-1 downto 0);
	xout,yout,zout : out std_logic_vector(width-1 downto 0);
	clk : in std_logic);
	end component;

	signal delay_25_tri_normal_x,delay_25_tri_normal_y,delay_25_tri_normal_z : std_logic_vector(BARY_WORD_LENGTH-1 downto 0);
	signal delay_28_rin, delay_28_gin, delay_28_bin : std_logic_vector(COLOR_WIDTH-1 downto 0);
begin


	--cycle-1 calc light vec
	--calc light-vec 
	calc_lightvec : vectsub 
	generic map (VERTEX_WORD_LENGTH)
	port map(
	lightx, lighty, lightz,
	Px, Py, Pz,
	Lx, Ly, Lz,
	clk);
	
	--Normalize the light vec = 24 cycles = cycle-2 to cycle 25
	norm_l : normalize 
	generic map (VERTEX_WORD_LENGTH+1,
				 BARY_FRAC_WIDTH, BARY_DATA_WIDTH, BARY_WORD_LENGTH)
	port map(
		Lx, Ly, Lz, 
		NLx, NLy, NLz,
		clk);
		
	--we need to delay tri-normal 25 cycles to match the availability of the light-vec
	trinormdelay : vectdelay
	generic map (tri_normal_x'length,25)
	port map (tri_normal_x,tri_normal_y,tri_normal_z,
			  delay_25_tri_normal_x,delay_25_tri_normal_y,delay_25_tri_normal_z,clk);
	

	--cycles 26 and 27 dot-product
	calc_n_dot_l : dotproduct
	generic map (tri_normal_x'length, NLx'length)
	port map (
	delay_25_tri_normal_x,delay_25_tri_normal_y,delay_25_tri_normal_z,
	NLx,NLy,NLz,
	n_dot_l,
	clk);
	
	sig_Tn_dot_l <= n_dot_l(2*BARY_FRAC_WIDTH+BARY_DATA_WIDTH-1 downto BARY_FRAC_WIDTH);
	
	--cycle #28 = neg process
	--if dot product is negative then there is back-ground color 
	process(clk) is 
	begin 
		if(rising_edge(clk)) then
			if(sig_Tn_dot_l(sig_Tn_dot_l'length -1) = '0') then
				processed_Tn_dot_l <= sig_Tn_dot_l;
			else
				--make it a bit dark i.e. divide by the nDotl by 4 (shift right 2)
				processed_Tn_dot_l <= conv_std_logic_vector(shr(signed(-sig_Tn_dot_l), conv_unsigned(2, 3)), sig_Tn_dot_l'length);
			end if;
		end if;
	end process; 

	--we need to delay RGB 28 cycles to match the availability of the ndotl
	RGBdelay : vectdelay
	generic map (rin'length,25)
	port map (rin, gin, bin,
			  delay_28_rin, delay_28_gin, delay_28_bin,clk);

	full_rin <= conv_std_logic_vector(shl(unsigned(ext(delay_28_rin, VERTEX_WORD_LENGTH)), conv_unsigned(VERTEX_FRAC_WIDTH, 32)), VERTEX_WORD_LENGTH);
	full_gin <= conv_std_logic_vector(shl(unsigned(ext(delay_28_gin, VERTEX_WORD_LENGTH)), conv_unsigned(VERTEX_FRAC_WIDTH, 32)), VERTEX_WORD_LENGTH);
	full_bin <= conv_std_logic_vector(shl(unsigned(ext(delay_28_bin, VERTEX_WORD_LENGTH)), conv_unsigned(VERTEX_FRAC_WIDTH, 32)), VERTEX_WORD_LENGTH);

	--cycle 29
	process(clk) is 
	begin 
		if(rising_edge(clk)) then
			new_full_rin <= "000000111111110000000000000000"; --full_rin * processed_Tn_dot_l;
			new_full_gin <= "000000111111110000000000000000"; --full_gin * processed_Tn_dot_l;
			new_full_bin <= "000000111111110000000000000000"; --full_bin * processed_Tn_dot_l;
		end if;
	end process;
	
	rout <= new_full_rin(VERTEX_FRAC_WIDTH+BARY_FRAC_WIDTH+COLOR_WIDTH-1 downto VERTEX_FRAC_WIDTH+BARY_FRAC_WIDTH);
	gout <= new_full_gin(VERTEX_FRAC_WIDTH+BARY_FRAC_WIDTH+COLOR_WIDTH-1 downto VERTEX_FRAC_WIDTH+BARY_FRAC_WIDTH);
	bout <= new_full_bin(VERTEX_FRAC_WIDTH+BARY_FRAC_WIDTH+COLOR_WIDTH-1 downto VERTEX_FRAC_WIDTH+BARY_FRAC_WIDTH);
	
end rtl;
