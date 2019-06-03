--rotate a given point about X, Y and X axis by 3 given angles
--total latency is 9 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity rotate_pt_xyz is

	generic 
	(
		VERTEX_FRAC_WIDTH : natural := 8;
		VERTEX_DATA_WIDTH : natural := 12;
		--VERTEX_WORD_LENGTH : natural := VERTEX_FRAC_WIDTH + VERTEX_DATA_WIDTH;
		VERTEX_WORD_LENGTH : natural := 20;
		ANGLE_WIDTH : natural := 9
	);

	port 
	(
		clk		: in std_logic;
		rst		: in std_logic;
		anglex, angley, anglez	: in std_logic_vector((ANGLE_WIDTH -1) downto 0);
		Ax,Ay,Az : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
		Px,Py,Pz : out std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0)
	);

end entity;

architecture rtl of rotate_pt_xyz is

component rotate_pt_x
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
end component;

component rotate_pt_y
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
end component;

component rotate_pt_z
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
end component;

--we know that VERTEX_FRAC_WIDTH is 8 while we need 10 bits for sin-cos tables
--we will pad 2 zeros at the end so that frac-widths line up
constant EXTRA_WIDTH : natural := 2;
signal TPx, TPy, TPz, Tx, Ty, Tz, Xx,Xy,Xz,Yx,Yy,Yz : std_logic_vector(EXTRA_WIDTH+VERTEX_WORD_LENGTH-1 downto 0);

begin


Tx <= Ax & "00";
Ty <= Ay & "00";
Tz <= Az & "00";

X : rotate_pt_x
	generic map
	(
		VERTEX_FRAC_WIDTH+ EXTRA_WIDTH,
		VERTEX_DATA_WIDTH,
		VERTEX_WORD_LENGTH+ EXTRA_WIDTH,
		ANGLE_WIDTH
	)
	port map
	(
		clk,
		rst,
		anglex,
		Tx,Ty,Tz,
		Xx, Xy, Xz
	);

Y : rotate_pt_y
	generic map
	(
		VERTEX_FRAC_WIDTH+ EXTRA_WIDTH,
		VERTEX_DATA_WIDTH,
		VERTEX_WORD_LENGTH+ EXTRA_WIDTH,
		ANGLE_WIDTH
	)
	port map
	(
		clk,
		rst,
		angley,
		Xx,Xy,Xz,
		Yx, Yy,Yz
	);

Z : rotate_pt_z
	generic map
	(
		VERTEX_FRAC_WIDTH+ EXTRA_WIDTH,
		VERTEX_DATA_WIDTH+ EXTRA_WIDTH,
		VERTEX_WORD_LENGTH+ EXTRA_WIDTH,
		ANGLE_WIDTH
	)
	port map
	(
		clk,
		rst,
		anglez,
		Yx,Yy,Yz,
		TPx, TPy, TPz
	);
	
Px <= TPx(EXTRA_WIDTH + Px'length-1 downto EXTRA_WIDTH);	
Py <= TPy(EXTRA_WIDTH + Px'length-1 downto EXTRA_WIDTH);	
Pz <= TPz(EXTRA_WIDTH + Px'length-1 downto EXTRA_WIDTH);	

--debug
--Px <= Ax;
--Py <= Ay;
--Pz <= Az;
	
end rtl;
