library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity rotate_pt_z is

	generic 
	(
		VERTEX_FRAC_WIDTH : natural;
		VERTEX_DATA_WIDTH : natural;
		VERTEX_WORD_LENGTH : natural;
		ANGLE_WIDTH : natural
	);

	port 
	(
		clk		: in std_logic;
		rst		: in std_logic;
		angle	: in std_logic_vector((ANGLE_WIDTH -1) downto 0);
		Ax,Ay,Az : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
		Px,Py,Pz : out std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0)
	);

end entity;

architecture rtl of rotate_pt_z is

	constant DATA_WIDTH : natural := 12;
	constant DATA_FRAC_WIDTH : natural := 10;

component sin_rom 
port 
(
	aclr : in std_logic;
	address : in std_logic_vector(ANGLE_WIDTH -1 downto 0);
	clock : in std_logic;
	q : out std_logic_vector(DATA_WIDTH -1 downto 0));
end component;

component cos_rom 
port 
(
	aclr : in std_logic;
	address : in std_logic_vector(ANGLE_WIDTH -1 downto 0);
	clock : in std_logic;
	q : out std_logic_vector(DATA_WIDTH -1 downto 0));
end component;

signal sin : std_logic_vector(DATA_WIDTH -1 downto 0);
signal cos : std_logic_vector(DATA_WIDTH -1 downto 0);

signal Aysin, Axcos,Aycos, Axsin, newx, newy: std_logic_vector(DATA_WIDTH+VERTEX_WORD_LENGTH-1 downto 0);



--rom values have fraction point after 10 bits i.1. divide by 1024
--so we have to line up the input point data as such.
--for now assume that they are given to us as 10bits fractional.

--rotation about z axis:
--x = xcos - ysin
--y = xsin + ycos
--z = z

begin

sinrom: sin_rom 
port map
(
	rst,
	angle,
	clk,
	sin
);

cosrom: cos_rom 
port map
(
	rst,
	angle,
	clk,
	cos
);

rotate_y : process(clk) is 
	begin 
		if(rising_edge(clk)) then
			Aysin <= Ay*sin;
			Axcos <= Ax*cos;
			Axsin <= Ax*sin;
			Aycos <= Ay*cos;
			
			newx <= Axcos - Aysin;
			newy <= Axsin + Aycos;
		end if;
	end process; 

	Px<= newx(Py'length + VERTEX_FRAC_WIDTH - 1 downto VERTEX_FRAC_WIDTH);
	Py<= newy(Py'length + VERTEX_FRAC_WIDTH - 1 downto VERTEX_FRAC_WIDTH);
	Pz <= Az;

end rtl;
