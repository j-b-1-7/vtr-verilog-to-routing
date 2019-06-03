--**** vectadd.vhd ****
-----------------------------------------
-- Signed Component -- total 3 cycles
-- Calculate point on triable given its 1 vertex and 2 edges and U,V barycentric coords
-----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
entity ptontri is
generic (
vert_width : natural;
coord_width : natural;
frac_width : natural
);
port(
v0x,v0y,v0z : in std_logic_vector(vert_width-1 downto 0);
e1x,e1y,e1z : in std_logic_vector(vert_width-1 downto 0);
e2x,e2y,e2z : in std_logic_vector(vert_width-1 downto 0);
u : in std_logic_vector(coord_width - 1 downto 0);
v : in std_logic_vector(coord_width - 1 downto 0);
Px,Py,Pz : out std_logic_vector(vert_width-1 downto 0);
clk : in std_logic);
end;
architecture rtl of ptontri is

	constant mult_width : natural := coord_width + vert_width;
	signal e1xu : std_logic_vector(mult_width - 1 downto 0);
	signal e1yu : std_logic_vector(mult_width - 1 downto 0);
	signal e1zu : std_logic_vector(mult_width - 1 downto 0);
	signal e2xv : std_logic_vector(mult_width - 1 downto 0);
	signal e2yv : std_logic_vector(mult_width - 1 downto 0);
	signal e2zv : std_logic_vector(mult_width - 1 downto 0);
	
	constant first_add_width : natural := vert_width;
	signal v0xu : std_logic_vector(first_add_width - 1 downto 0);
	signal v0yu : std_logic_vector(first_add_width - 1 downto 0);
	signal v0zu : std_logic_vector(first_add_width - 1 downto 0);
	
	constant second_add_width : natural := first_add_width;
	signal v0xuv : std_logic_vector(second_add_width - 1 downto 0);
	signal v0yuv : std_logic_vector(second_add_width - 1 downto 0);
	signal v0zuv : std_logic_vector(second_add_width - 1 downto 0);
	
	signal delay_1_v0x, delay_1_v0y, delay_1_v0z : std_logic_vector(vert_width-1 downto 0);
	
	component vectdelay is
	generic (
	width : natural;
	depth : natural);
	port(
	xin,yin,zin : in std_logic_vector(width-1 downto 0);
	xout,yout,zout : out std_logic_vector(width-1 downto 0);
	clk : in std_logic);
	end component;
	
begin

	--we ned to delay V0 for 1 cycle so that it is available along with E1XU etc.
	v0delay : vectdelay
	generic map(vert_width,1)
	port map (v0x,v0y,v0z,delay_1_v0x, delay_1_v0y, delay_1_v0z,clk);


		process(clk)
		begin

		if (rising_edge(clk)) then
			
			--first multiplication == 1 cycle
			--both operands have same fraction widths so the result will have twice that
			e1xu <= e1x * u;
			e1yu <= e1y * u;
			e1zu <= e1z * u;
			e2xv <= e2x * v;
			e2yv <= e2y * v;
			e2zv <= e2z * v;
			
			--add to vertex 0 to get a point for u == 1 cycle
			--right shifht e1xu 14 bits to line up the decimal point
			--basically reduce the datasize to the vert_width
			v0xu <= e1xu(vert_width+frac_width-1 downto frac_width) + delay_1_v0x;
			v0yu <= e1yu(vert_width+frac_width-1 downto frac_width) + delay_1_v0y;
			v0zu <= e1zu(vert_width+frac_width-1 downto frac_width) + delay_1_v0z;
			
			--add the u vertex to v0 to get final uv point == 1 cycle
			--basically reduce the datasize to the vert_width
			v0xuv <= e2xv(vert_width+frac_width-1 downto frac_width) + v0xu;
			v0yuv <= e2yv(vert_width+frac_width-1 downto frac_width) + v0yu;
			v0zuv <= e2zv(vert_width+frac_width-1 downto frac_width) + v0zu;
			
		end if;
	end process;
	
	Px <= v0xuv(vert_width-1 downto 0);
	Py <= v0yuv(vert_width-1 downto 0);
	Pz <= v0zuv(vert_width-1 downto 0);
	
end rtl;