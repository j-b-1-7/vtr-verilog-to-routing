--total 16 cycles
--**** raytri.vhd ****
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
library work;
entity raytri is
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
end;
architecture rtl of raytri is

component shifter is
generic (width : natural);
port(
A : in std_logic_vector(width-1 downto 0);
B : out std_logic_vector(width-1 downto 0);
factor : in std_logic_vector(1 downto 0));
end component;

component exchange is
generic (width : natural);
port(
A : in std_logic_vector(width-1 downto 0);
B : in std_logic_vector(width-1 downto 0);
C : out std_logic_vector(width-1 downto 0);
ABn : in std_logic);
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

component vectsub is
generic (width : natural);
port(
Ax,Ay,Az : in std_logic_vector(width-1 downto 0);
Bx,By,Bz : in std_logic_vector(width-1 downto 0);
Cx,Cy,Cz : out std_logic_vector(width downto 0);
clk : in std_logic);
end component;

component vectdelay is
generic (
width : natural;
depth : natural);
port(
xin,yin,zin : in std_logic_vector(width-1 downto 0);
xout,yout,zout : out std_logic_vector(width-1 downto 0);
clk : in std_logic);
end component;

component vectexchange is
generic (
width : natural);
port(
Ax,Ay,Az : in std_logic_vector(width-1 downto 0);
Bx,By,Bz : in std_logic_vector(width-1 downto 0);
Cx,Cy,Cz : out std_logic_vector(width-1 downto 0);
ABn : in std_logic);
end component;

component divide is
generic (
widthA : natural;
widthOut : natural; -- Width of the output
widthB : natural;
widthFrac : natural); -- Fraction bits in output
port(
A : in std_logic_vector(widthA-1 downto 0);
B : in std_logic_vector(widthB-1 downto 0);
Qout : out std_logic_vector(widthOut-1 downto 0);
clk : in std_logic);
end component;


-- Latch Connected Signals
signal edge1xla,edge1yla,edge1zla : std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
signal edge1xlb,edge1ylb,edge1zlb : std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
signal edge2xla,edge2yla,edge2zla : std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
signal edge2xlb,edge2ylb,edge2zlb : std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
signal temp_dirxla,temp_diryla,temp_dirzla : std_logic_vector(VERTEX_WORD_LENGTH downto 0);
signal dirxla,diryla,dirzla : std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
signal dirxlb,dirylb,dirzlb : std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
signal hitl, sig_is_backwards, delay_10_is_backwards : std_logic_vector(0 downto 0);
-- Intermediate Signals
signal pvecx,pvecy,pvecz : std_logic_vector(2*VERTEX_WORD_LENGTH downto 0);
signal det, neg_proc_det : std_logic_vector(3*VERTEX_WORD_LENGTH + 2 downto 0);
signal detl : std_logic_vector(edge1xlb'LENGTH + pvecz'LENGTH + 1 downto 0);

signal tvecx,tvecy,tvecz : std_logic_vector(VERTEX_WORD_LENGTH downto 0);
signal tvecxl,tvecyl,tveczl : std_logic_vector(VERTEX_WORD_LENGTH downto 0);

signal qvecx,qvecy,qvecz : std_logic_vector(2*VERTEX_WORD_LENGTH + 1 downto 0);
signal su, neg_proc_su : std_logic_vector(tvecxl'LENGTH+pvecx'LENGTH+1 downto 0);
signal v, neg_proc_v : std_logic_vector(dirxlb'LENGTH + qvecx'LENGTH+1 downto 0);
signal t, neg_proc_t : std_logic_vector(3*VERTEX_WORD_LENGTH+3 downto 0);

signal uv : std_logic_vector(su'length downto 0);
signal hitinter : std_logic;
-- Output Signals
signal hit : std_logic_vector(0 downto 0);

	signal temp_t, temp_u, temp_v : std_logic_vector(BARYCENTRIC_WORD_LENGTH - 1 downto 0);
	
	signal hit_impossible : std_logic;

begin

-----start cycle #1

--prepare tvec in 1 cycle
tvec : vectsub -- tvec=wl+1
generic map (VERTEX_WORD_LENGTH)
port map (origx,origy,origz,vert0x,vert0y,vert0z,tvecx,tvecy,tvecz,clk);

--delay followings 1 cycle to match the tvec availability
eye_vec : vectsub 
generic map (VERTEX_WORD_LENGTH)
port map (origx,origy,origz,eyex,eyey,eyez,temp_dirxla,temp_diryla,temp_dirzla,clk);
dirxla <= temp_dirxla(dirxla'range);
diryla <= temp_diryla(diryla'range);
dirzla <= temp_dirzla(dirzla'range);

edge2delaya : vectdelay
generic map(VERTEX_WORD_LENGTH,1)
port map (edge2x,edge2y,edge2z,edge2xla,edge2yla,edge2zla,clk);

edge1adelay : vectdelay
generic map (VERTEX_WORD_LENGTH,1)
port map (edge1x,edge1y,edge1z,edge1xla,edge1yla,edge1zla,clk);

------------------------------------------------------

-----start cycle #2 and #3 - cross product takes 2 cycles

--frac is 2*frac_width and qvec=2*wl + 2
qvec : crossproduct
generic map (VERTEX_WORD_LENGTH+1,VERTEX_WORD_LENGTH)
port map (tvecx,tvecy,tvecz,edge1xla,edge1yla,edge1zla,qvecx,qvecy,qvecz,clk);

-- pvec fraction is at 2*frac_width where pvec = 2*wordlength+1
pvec : crossproduct
generic map (VERTEX_WORD_LENGTH,VERTEX_WORD_LENGTH)
port map (dirxla,diryla,dirzla,edge2xla,edge2yla,edge2zla,pvecx,pvecy,pvecz,clk);

--delay followings 2 cycles to match the qvec and pvec availability
edge1bdelay : vectdelay
generic map (VERTEX_WORD_LENGTH,2)
port map (edge1xla,edge1yla,edge1zla,edge1xlb,edge1ylb,edge1zlb,clk);

edge2delayb : vectdelay
generic map(edge2xla'LENGTH,2)
port map (edge2xla,edge2yla,edge2zla,edge2xlb,edge2ylb,edge2zlb,clk);

tvecdelay : vectdelay
generic map (VERTEX_WORD_LENGTH+1,2)
port map (tvecx,tvecy,tvecz,tvecxl,tvecyl,tveczl,clk);

dirdelayb : vectdelay
generic map(dirxla'LENGTH,2)
port map(dirxla,diryla,dirzla,dirxlb,dirylb,dirzlb,clk);
------------------------------------------------------

--cycles 4 and 5 - dot_product takes 2 cycles

calc_det : dotproduct -- = 3wl+2
generic map (pvecz'LENGTH, edge1xlb'LENGTH)
port map(pvecx,pvecy,pvecz,edge1xlb,edge1ylb,edge1zlb,det,clk);

calc_udet : dotproduct -- su = 3*wl + 3
generic map (pvecx'LENGTH, tvecxl'LENGTH)
port map (pvecx,pvecy,pvecz,tvecxl,tvecyl,tveczl,su,clk);

calc_vdet : dotproduct
generic map (qvecx'LENGTH, dirxlb'LENGTH)
port map (qvecx,qvecy,qvecz,dirxlb,dirylb,dirzlb,v,clk);

calc_tdet : dotproduct -- t = 3wl+2
generic map (qvecx'LENGTH, edge2xlb'LENGTH)
port map (qvecx,qvecy,qvecz,edge2xlb,edge2ylb,edge2zlb,t,clk);
----------------------------------------------------------

--cycle #6 - negatives processing
--new from kamal to get back side of triangle intersecting...
--check that signs for su, det, v, and t must match
--if they are all negative then we have to make them positive before the divider because we have unsigned dividers
	process(clk)
	begin
		if (rising_edge(clk)) then
			if ((su(su'length-1) = '1') and (det(det'length-1) = '1') and (v(v'length-1) = '1') and (t(t'length-1) = '1')) then
				--all negative
				neg_proc_su <= -su;
				neg_proc_det <= -det;
				neg_proc_t <= -t;
				neg_proc_v <= -v;
				hit_impossible <= '0';
				sig_is_backwards <= "1";
			elsif ((su(su'length-1) = '0') and (det(det'length-1) = '0') and (v(v'length-1) = '0') and (t(t'length-1) = '0')) then
				--all positive
				neg_proc_su <= su;
				neg_proc_det <= det;
				neg_proc_t <= t;
				neg_proc_v <= v;
				hit_impossible <= '0';
				sig_is_backwards <= "0";
			else 
				--signs don't match
				hit_impossible <= '1';
				sig_is_backwards <= "0";				
			end if;
		end if;
	end process;




---divider is supposed to be 2.8 = 10 cycles so 7 to 16

-- su == 3wl+3, 3frac
--det == 3wl + 2, 3frac
--ru == bwl
divu : divide
generic map(neg_proc_su'LENGTH,uout'LENGTH,neg_proc_det'LENGTH,BARYCENTRIC_FRAC_WIDTH) 
port map(neg_proc_su,neg_proc_det,temp_u,clk);

divv : divide
generic map(neg_proc_v'length,vout'length,neg_proc_det'length,BARYCENTRIC_FRAC_WIDTH)
port map(neg_proc_v,neg_proc_det,temp_v,clk);

divt : divide
generic map(neg_proc_t'length,tout'length,neg_proc_det'length,BARYCENTRIC_FRAC_WIDTH)
port map(neg_proc_t,neg_proc_det,temp_t,clk);

detdelay : delay
generic map (neg_proc_det'length,1)
port map(neg_proc_det,detl,clk);

tout <= temp_t;
uout <= temp_u;
vout <= temp_v;

--also calc in parallel the hit logic -- Hit detection Logic (2 cycles)
	process(clk)
	begin
		if (rising_edge(clk)) then
			uv <= (neg_proc_su(neg_proc_su'length-1) & neg_proc_su)+(neg_proc_v(neg_proc_v'length-1) & neg_proc_v);
			if ((hit_impossible = '1') or (neg_proc_su > neg_proc_det) or (neg_proc_v > neg_proc_det)) then
				hitinter <= '0';
			else
				hitinter <= '1';
			end if;
			
			if ((hitinter = '0') or (uv > detl)) then
				hit(0) <= '0';
			else
				hit(0) <= '1';
			end if;

		end if;
	end process;

----------------------------------------------------------
--the hit logic takes 2 cycles and the dividers take BARYCENTRIC_WORD_LENGTH cycles
--So, the delay for hit logic to line up should be BARYCENTRIC_WORD_LENGTH - 2
--this is delayed by 8 only because t-divider is shorter now

hitdelay : delay generic map (1,BARYCENTRIC_WORD_LENGTH - 2) port map (hit,hitl,clk);
hitout <= hitl;

--we need to delay the backwards signal 10 cycles so that it goes out along with every one else
--we assume 16 cycles delay total of this entire block
backwardsdelay : delay generic map (1,10) port map (sig_is_backwards,delay_10_is_backwards,clk);

is_backwards <= delay_10_is_backwards;

end rtl;
