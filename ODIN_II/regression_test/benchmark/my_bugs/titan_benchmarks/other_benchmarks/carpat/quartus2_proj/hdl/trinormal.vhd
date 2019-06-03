--**** trinormal.vhd ***
-----------------------------------------
-- Given a triangle return its normalized normal.
-----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
entity trinormal is
generic (
	VERTEX_FRAC_WIDTH : natural;
	VERTEX_DATA_WIDTH : natural;
	VERTEX_WORD_LENGTH : natural;
	BARY_FRAC_WIDTH : natural;
	BARY_DATA_WIDTH : natural;
	BARY_WORD_LENGTH : natural
);
port(
	e1x,e1y,e1z : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
	e2x,e2y,e2z : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
	NNx,NNy,NNz : out std_logic_vector(BARY_WORD_LENGTH-1 downto 0);
	clk : in std_logic);
end;
architecture rtl of trinormal is

--we might have to swap E1 and E2
--	constant e1x : std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0) := conv_std_logic_vector(shl(conv_signed(3, VERTEX_WORD_LENGTH), conv_unsigned(VERTEX_FRAC_WIDTH, 32)), VERTEX_WORD_LENGTH);
--	constant e1y : std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0) := conv_std_logic_vector(shl(conv_signed(-6, VERTEX_WORD_LENGTH), conv_unsigned(VERTEX_FRAC_WIDTH, 32)), VERTEX_WORD_LENGTH);
--	constant e1z : std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0) := conv_std_logic_vector(shl(conv_signed(0, VERTEX_WORD_LENGTH), conv_unsigned(VERTEX_FRAC_WIDTH, 32)), VERTEX_WORD_LENGTH);
	
--	constant e2x : std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0) := conv_std_logic_vector(shl(conv_signed(-3, VERTEX_WORD_LENGTH), conv_unsigned(VERTEX_FRAC_WIDTH, 32)), VERTEX_WORD_LENGTH);
--	constant e2y : std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0) := conv_std_logic_vector(shl(conv_signed(-6, VERTEX_WORD_LENGTH), conv_unsigned(VERTEX_FRAC_WIDTH, 32)), VERTEX_WORD_LENGTH);
--	constant e2z : std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0) := conv_std_logic_vector(shl(conv_signed(0, VERTEX_WORD_LENGTH), conv_unsigned(VERTEX_FRAC_WIDTH, 32)), VERTEX_WORD_LENGTH);
	
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
	
	component crossproduct is
	generic (
	widthA : natural;
	widthB : natural);
	port(
	Ax,Ay,Az : in std_logic_vector(widthA-1 downto 0);
	Bx,By,Bz : in std_logic_vector(widthB-1 downto 0);
	Cx,Cy,Cz : out std_logic_vector(widthA+widthB downto 0);
	clk : in std_logic);
	end component;

	signal Nx,Ny,Nz : std_logic_vector(2*VERTEX_WORD_LENGTH downto 0);
	signal sig_TNx,sig_TNy,sig_TNz : std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);			
	

begin

	--Cycle-1 to Cycle-2 - calculate normal

	--calculate the normal = e1 X e2
	calcN : crossproduct
	generic map (VERTEX_WORD_LENGTH, VERTEX_WORD_LENGTH)
	port map(
	e1x, e1y, e1z,
	e2x, e2y, e2z,
	Nx, Ny, Nz,
	clk);

	--Now, I want to throw away the 28 bits of precision because I think it won't affect much
	--Thus, in terms of fixed point we have 0 bits precision left
	sig_TNx <= Nx(2*VERTEX_FRAC_WIDTH+VERTEX_WORD_LENGTH-1 downto 2*VERTEX_FRAC_WIDTH);
	sig_TNy <= Ny(2*VERTEX_FRAC_WIDTH+VERTEX_WORD_LENGTH-1 downto 2*VERTEX_FRAC_WIDTH);
	sig_TNz <= Nz(2*VERTEX_FRAC_WIDTH+VERTEX_WORD_LENGTH-1 downto 2*VERTEX_FRAC_WIDTH);

	--cycle 3 to 26 (total 24 cycles) for normalization
	--Normalize the normal
	norm_n : normalize 
	generic map (VERTEX_WORD_LENGTH,
				 BARY_FRAC_WIDTH, BARY_DATA_WIDTH, BARY_WORD_LENGTH)
	port map(
		sig_TNx, sig_TNy, sig_TNz, 
		NNx, NNy, NNz,
		clk);

end rtl;