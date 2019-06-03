--49 cycles total
--Kamal's new code
-- I will use 10 bits fixed-point. I.e. the decimal point will be after the last 10 bits
-- Each vertext data-width is 11 bits
-- So,the vertex is a signed (sign)10.10 representation.

--**** myray_test.vhd ****
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
library work;



entity myray_test is
generic(
	VERTEX_FRAC_WIDTH : natural;
	VERTEX_DATA_WIDTH : natural;
	VERTEX_WORD_LENGTH : natural;
	BARYCENTRIC_FRAC_WIDTH : natural;
	BARYCENTRIC_DATA_WIDTH : natural;
	BARYCENTRIC_WORD_LENGTH : natural;
	COLOR_WIDTH : natural
	
	);
port(
	clk : in std_logic;

	v0x : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
	v0y : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
	v0z : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);	

	edge1x : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
	edge1y : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
	edge1z : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);	

	edge2x : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
	edge2y : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
	edge2z : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);	
	
	origx : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
	origy : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
	origz : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);	
	
	eyex : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
	eyey : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
	eyez : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);	

	lightx : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
	lighty : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
	lightz : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);	

    red_in, green_in, blue_in : in std_logic_vector(COLOR_WIDTH - 1 downto 0);
	
	tri_normal_x,tri_normal_y,tri_normal_z : in std_logic_vector(BARYCENTRIC_WORD_LENGTH-1 downto 0);		

    intersected_tri : out std_logic_vector(0 downto 0);
    intersect_x : out std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
    intersect_y : out std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
    intersect_z : out std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);

	red_out, green_out, blue_out : out std_logic_vector(COLOR_WIDTH - 1 downto 0)

	);
end;
architecture rtl of myray_test is

	signal sig_tout : std_logic_vector(BARYCENTRIC_WORD_LENGTH-1 downto 0);
	signal sig_uout : std_logic_vector(BARYCENTRIC_WORD_LENGTH-1 downto 0);
	signal sig_vout : std_logic_vector(BARYCENTRIC_WORD_LENGTH-1 downto 0);
	signal sig_Px, sig_Py, sig_Pz : std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
	signal Nx, Ny, Nz : std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
	signal sig_red_out, sig_green_out, sig_blue_out : std_logic_vector(COLOR_WIDTH - 1 downto 0);
	signal hitout : std_logic_vector(0 downto 0);
	signal delay_33_hitout : std_logic_vector(0 downto 0);	
	
	signal delay_20_red_in, delay_20_green_in, delay_20_blue_in : std_logic_vector(COLOR_WIDTH - 1 downto 0);
	signal delay_20_lightx, delay_20_lighty, delay_20_lightz : std_logic_vector(VERTEX_WORD_LENGTH - 1 downto 0);
	
	-------------------------------------------------
	component vectadd is
	generic (
	wordlength : natural
	);
	port(
		Ax,Ay,Az : in std_logic_vector(wordlength-1 downto 0);
		Bx,By,Bz : in std_logic_vector(wordlength-1 downto 0);
		Cx,Cy,Cz : out std_logic_vector(wordlength-1 downto 0);
		clk : in std_logic);
	end component;
	-------------------------------------------------
	
	-------------------------------------------------
	component raytri is
	generic(
		VERTEX_FRAC_WIDTH : natural;
		VERTEX_DATA_WIDTH : natural;
		VERTEX_WORD_LENGTH : natural;
		BARYCENTRIC_FRAC_WIDTH : natural;
		BARYCENTRIC_DATA_WIDTH : natural;
		BARYCENTRIC_WORD_LENGTH : natural
		);
	port(
		clk : in std_logic;
		
		tout : out std_logic_vector(BARYCENTRIC_WORD_LENGTH - 1 downto 0);
		uout : out std_logic_vector(BARYCENTRIC_WORD_LENGTH - 1 downto 0);
		vout : out std_logic_vector(BARYCENTRIC_WORD_LENGTH - 1 downto 0);
		hitout : out std_logic_vector(0 downto 0);
		is_backwards : out std_logic_vector(0 downto 0);

		vert0x,vert0y,vert0z : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
		origx,origy,origz : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
		eyex,eyey,eyez : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
		edge1x,edge1y, edge1z : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
		edge2x,edge2y, edge2z : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0)
	);
	end component;
	-------------------------------------------------

	component ptontri is
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
	end component;
	-------------------------------------------------
	
	component lighting is
	generic (
		COLOR_WIDTH : natural;
		VERTEX_FRAC_WIDTH  : natural;
		VERTEX_DATA_WIDTH : natural;
		VERTEX_WORD_LENGTH : natural;
		BARY_FRAC_WIDTH : natural;
		BARY_DATA_WIDTH : natural;
		BARY_WORD_LENGTH : natural
	);
	port(
		Px,Py,Pz : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
		tri_normal_x,tri_normal_y,tri_normal_z : in std_logic_vector(BARYCENTRIC_WORD_LENGTH-1 downto 0);		
		lightx, lighty, lightz : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);	
		rin, gin, bin : in std_logic_vector(COLOR_WIDTH-1 downto 0);
		rout, gout, bout : out std_logic_vector(COLOR_WIDTH-1 downto 0);
		clk : in std_logic);
	end component;

	--if the hit was from the back-side then the normal needs to be flipped
	signal is_backwards, delay_2_is_backwards : std_logic_vector(0 downto 0);
	signal adj_normal_x,adj_normal_y,adj_normal_z : std_logic_vector(BARYCENTRIC_WORD_LENGTH-1 downto 0);		

	signal delay_16_v0x, delay_16_v0y, delay_16_v0z : std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
	signal delay_16_edge1x, delay_16_edge1y, delay_16_edge1z : std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
	signal delay_16_edge2x, delay_16_edge2y, delay_16_edge2z : std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
	
	component vectdelay is
	generic (
	width : natural;
	depth : natural);
	port(
	xin,yin,zin : in std_logic_vector(width-1 downto 0);
	xout,yout,zout : out std_logic_vector(width-1 downto 0);
	clk : in std_logic);
	end component;

	component delay is
	generic (
	width : natural;
	depth : natural);
	port(
	datain : in std_logic_vector(width-1 downto 0);
	dataout : out std_logic_vector(width-1 downto 0);
	clk : in std_logic);
	end component;

begin

	--cycle-1 ray-tri-starts.
	--ray-tri takes 16 cycles.
	-------------------------------------------------
	
	ray_tri_inst : raytri
	generic map
		(
			VERTEX_FRAC_WIDTH, VERTEX_DATA_WIDTH, VERTEX_WORD_LENGTH,
			BARYCENTRIC_FRAC_WIDTH, BARYCENTRIC_DATA_WIDTH, BARYCENTRIC_WORD_LENGTH
		)
	port map(
		clk,
		sig_tout, sig_uout, sig_vout,
		hitout,
		is_backwards,
		v0x, v0y, v0z,
		origx,origy,origz,
		eyex,eyey,eyez,
		edge1x,edge1y, edge1z,
		edge2x,edge2y, edge2z
	);
	
	--we need to make V0, E1, and E2 wait 16 cycles untilU and V are available
	v0delaya : vectdelay
	generic map(VERTEX_WORD_LENGTH,16)
	port map (v0x,v0y,v0z,delay_16_v0x, delay_16_v0y, delay_16_v0z,clk);
	
	edge2delaya : vectdelay
	generic map(VERTEX_WORD_LENGTH,16)
	port map (edge2x,edge2y,edge2z,delay_16_edge2x, delay_16_edge2y, delay_16_edge2z,clk);

	edge1adelay : vectdelay
	generic map (VERTEX_WORD_LENGTH,16)
	port map (edge1x,edge1y,edge1z,delay_16_edge1x, delay_16_edge1y, delay_16_edge1z,clk);

	--cycles 17, 18, 19
	--calc the pt on triangle - 3 cycles
	ptontri_inst : ptontri 
	generic map(VERTEX_WORD_LENGTH, BARYCENTRIC_WORD_LENGTH,VERTEX_FRAC_WIDTH)
	port map(
		delay_16_v0x,delay_16_v0y,delay_16_v0z,
		delay_16_edge1x,delay_16_edge1y,delay_16_edge1z,
		delay_16_edge2x,delay_16_edge2y,delay_16_edge2z,
		sig_uout,sig_vout,
		sig_Px,sig_Py,sig_Pz,
		clk);
		
	
	--shading-----------------------------------------------
		--let's assume that normal at this point is same as notmal at v0.
		--we can improve this later for better accuracy.
		
	--is_backwards need to be delayed two cycles because only by then the normal will be available
	delayisbackwards : delay generic map(is_backwards'length,2) port map (is_backwards, delay_2_is_backwards,clk);	
	

	--notice that this trinormal adjust happens in parallel with cycle#19 which when tri-normal is available
	--cycle #19 - 1 cycle is for normal negative adjustment
	--if the hit was from behind then flip the normal
	process (clk)
	begin
		if (rising_edge(clk)) then
			if (delay_2_is_backwards = "1") then
				adj_normal_x <= -tri_normal_x;
				adj_normal_y <= -tri_normal_y;
				adj_normal_z <= -tri_normal_z;
			else 
				adj_normal_x <= tri_normal_x;
				adj_normal_y <= tri_normal_y;
				adj_normal_z <= tri_normal_z;
			end if;
		end if;
	end process;

	--we need to delay RGB, and light 19 cycles to align them with the availability of 
	--the P and N
	
	lightdelay : vectdelay
	generic map(lightx'length,19)
	port map (lightx, lighty, lightz,delay_20_lightx, delay_20_lighty, delay_20_lightz, clk);

	colordelay : vectdelay
	generic map(red_in'length,19)
	port map (red_in, green_in, blue_in,delay_20_red_in, delay_20_green_in, delay_20_blue_in, clk);

	--cycles 20 to 48 is lightining (total 29)	
	phong : lighting 
	generic map(
		COLOR_WIDTH => COLOR_WIDTH,
		VERTEX_FRAC_WIDTH => VERTEX_FRAC_WIDTH,
		VERTEX_DATA_WIDTH => VERTEX_DATA_WIDTH,
		VERTEX_WORD_LENGTH => VERTEX_WORD_LENGTH,
		BARY_FRAC_WIDTH => BARYCENTRIC_FRAC_WIDTH,
		BARY_DATA_WIDTH => BARYCENTRIC_DATA_WIDTH,
		BARY_WORD_LENGTH => BARYCENTRIC_WORD_LENGTH
	
	)
	port map(
		sig_Px,sig_Py,sig_Pz,
		adj_normal_x,adj_normal_y,adj_normal_z,
		delay_20_lightx, delay_20_lighty, delay_20_lightz,
		delay_20_red_in, delay_20_green_in, delay_20_blue_in,
		sig_red_out, sig_green_out, sig_blue_out,
		clk);
	-------------------------------------------------

	--we need to delay hit by 48-16 = 32 cycles to match the availability of the RGB_out
	hitdelay : delay generic map(hitout'length,32) port map (hitout, delay_33_hitout,clk);	

	--cycle # 49
	process (clk)
	begin
		if (rising_edge(clk)) then
		
			intersected_tri	<= delay_33_hitout;
			
			if (delay_33_hitout = "1") then
				red_out <= sig_red_out;
				green_out <= sig_green_out;
				blue_out <= sig_blue_out;
			else
				red_out   <= "0000000000";
				green_out <= "0000000000";
				blue_out  <= "0000000000";
			end if;
		end if;
	end process;

	
	--50 - 20 = 30 cycles that P have to be delayed to match the availability of the RGB_out
	Pdelay : vectdelay
	generic map (sig_Px'length,30)
	port map (sig_Px,sig_Py,sig_Pz,intersect_x, intersect_y, intersect_z,clk);

end rtl;
