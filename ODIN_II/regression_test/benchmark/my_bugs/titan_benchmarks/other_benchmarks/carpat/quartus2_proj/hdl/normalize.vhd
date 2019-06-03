--total 24 cycles
--**** normalize.vhd ****
-----------------------------------------
-- Normalize a given vector
--NO assumption is made on the precision of the input data. We only guarantee that
--RESULT_FRAC_WIDTH of precision will be generated in the output data.
-----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
entity normalize is
generic (
	VERTEX_WORD_LENGTH : natural;
	--normalization yields -1 to  1 result!
	RESULT_FRAC_WIDTH : natural;
	RESULT_DATA_WIDTH : natural;
	RESULT_WORD_LENGTH : natural
	
);
port(
Ax,Ay,Az : in std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
Px,Py,Pz : out std_logic_vector(RESULT_WORD_LENGTH-1 downto 0);
clk : in std_logic);
end;
architecture rtl of normalize is
	signal full_Ax2, full_Ay2, full_Az2 : std_logic_vector(2*VERTEX_WORD_LENGTH - 1 downto 0);
	signal Ax2Ay2 : std_logic_vector(2*VERTEX_WORD_LENGTH - 1 downto 0);
	signal Ax2Ay2Az2 : std_logic_vector(2*VERTEX_WORD_LENGTH - 1 downto 0);
	signal sqrt_q : std_logic_vector(VERTEX_WORD_LENGTH - 1 downto 0);
	signal sqrt_r : std_logic_vector(VERTEX_WORD_LENGTH downto 0);
	
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

	component mysqrt is
	port (
	clk : in std_logic;
	radical : in std_logic_vector(2*VERTEX_WORD_LENGTH-1 downto 0);
	q : out std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
	remainder : out std_logic_vector(VERTEX_WORD_LENGTH downto 0));
	end component;

	signal neg_proc_Ax, neg_proc_Ay, neg_proc_Az : std_logic_vector(VERTEX_WORD_LENGTH-1 downto 0);
	signal delayed_neg_proc_Ax, delayed_neg_proc_Ay, delayed_neg_proc_Az : std_logic_vector(neg_proc_Ax'range);
	signal is_x_neg, is_y_neg, is_z_neg : std_logic_vector( 0 downto 0) := "0";
	signal delayed_is_x_neg, delayed_is_y_neg, delayed_is_z_neg : std_logic_vector( 0 downto 0);
	signal neg_proc_Px, neg_proc_Py, neg_proc_Pz : std_logic_vector(RESULT_WORD_LENGTH-1 downto 0);
	
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

	--cycle-1 do negative processing, do squares
	--cycle-2 - add_1
	--cycle-3 - add_2
	--cycle-4 to cycle-13 - sqrt (10 cycles)
	--cycle-14 to cycle-23 - 3 divides in parallel - (10 cycles)
	--cycle-24 - negative adjustment

	-- if item is nagative then note it and make it positive so that we can use unsigned division.
	process(clk)
	begin
	if (rising_edge(clk)) then

		if ( Ax(Ax'length -1) = '1') then
			is_x_neg <= "1";
			neg_proc_Ax <= -Ax;
		else
			is_x_neg <= "0";
			neg_proc_Ax <= Ax;
		end if;

		if ( Ay(Ay'length -1) = '1') then
			is_y_neg <= "1";
			neg_proc_Ay <= -Ay;
		else
			is_y_neg <= "0";
			neg_proc_Ay <= Ay;
		end if;
		
		if ( Az(Az'length -1) = '1') then
			is_z_neg <= "1";
			neg_proc_Az <= -Az;
		else
			is_z_neg <= "0";
			neg_proc_Az <= Az;
		end if;

	end if;
	end process;

	--calculate squares
	process(clk)
	begin
	if (rising_edge(clk)) then
	
		full_Ax2 <= Ax*Ax;
		full_Ay2 <= Ay*Ay;
		full_Az2 <= Az*Az;
		
	end if;
	end process;

	--Add squares
	process(clk)
	begin
	if (rising_edge(clk)) then
	
		Ax2Ay2 <= full_Ax2 + full_Ay2;
		Ax2Ay2Az2 <= Ax2Ay2 + full_Az2;
		
	end if;
	end process;

	mysqrt_inst : mysqrt 
	port map (
	clk,
	Ax2Ay2Az2,
	sqrt_q,
	sqrt_r);
	
	--we need to delay the neg-proc Ax, Ay, and Az to match the availability of sqrt_q == 12 cycles
	delayAx : delay generic map(neg_proc_Ax'length,12) port map (neg_proc_Ax, delayed_neg_proc_Ax,clk);
	delayAy : delay generic map(neg_proc_Ay'length,12) port map (neg_proc_Ay, delayed_neg_proc_Ay,clk);
	delayAz : delay generic map(neg_proc_Az'length,12) port map (neg_proc_Az, delayed_neg_proc_Az,clk);
	
	--calculate dividers
	ax_divide : divide
	generic map (Ax'length, Px'length, sqrt_q'length, RESULT_FRAC_WIDTH)
	port map (delayed_neg_proc_Ax, sqrt_q, neg_proc_Px, clk);

	ay_divide : divide
	generic map (Ay'length, Py'length, sqrt_q'length, RESULT_FRAC_WIDTH)
	port map (delayed_neg_proc_Ay, sqrt_q, neg_proc_Py, clk);

	az_divide : divide
	generic map (Az'length, Pz'length, sqrt_q'length, RESULT_FRAC_WIDTH)
	port map (delayed_neg_proc_Az, sqrt_q, neg_proc_Pz, clk);

	--we need to delay the is_neg variables to match the availability of net-prox-P variables == 22 cycles
	delayisnegx : delay generic map(1,22) port map (is_x_neg, delayed_is_x_neg,clk);
	delayisnegy : delay generic map(1,22) port map (is_y_neg, delayed_is_y_neg,clk);
	delayisnegz : delay generic map(1,22) port map (is_z_neg, delayed_is_z_neg,clk);

	-- if item was made positive then post-division make it negative again to get back correct result.
	process(clk)
	begin
	if (rising_edge(clk)) then

		if ( delayed_is_x_neg = "1") then
			Px <= -neg_proc_Px;
		else
			Px <= neg_proc_Px;
		end if;

		if ( delayed_is_y_neg = "1") then
			Py <= -neg_proc_Py;
		else
			Py <= neg_proc_Py;
		end if;

		if ( delayed_is_z_neg = "1") then
			Pz <= -neg_proc_Pz;
		else
			Pz <= neg_proc_Pz;
		end if;
		
	end if;
	end process;

end rtl;