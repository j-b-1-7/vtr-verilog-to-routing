-- Testbench for mes_noc
library ieee;
use ieee.std_logic_1164.all;
use work.tg_pkg.all;
use work.mon_pkg.all;
use work.mes_noc_pkg.all;

entity mes_noc_tb is
end mes_noc_tb;

architecture behavior of mes_noc_tb is
	--Component delcartation for DUT
	component mes_noc
		port (
				clk         : in  std_logic;
				rst_n       : in  std_logic;
				uart_rx_in  : in  std_logic;
				uart_tx_out : out std_logic;
				failure_out : out std_logic
		
				);
	end component;
	
	--Delcare and initialize signals
	signal clk : std_logic := '0';
	signal reset_n : std_logic := '0';
	
	signal uart_rx_in: std_logic := '0';
	signal uart_tx_out: std_logic;
	signal failure_out: std_logic;
	
	--Constants
	constant clk_period : time := 20 ns;
	
begin

	dut: mes_noc port map (
			clk => clk,
			rst_n => reset_n,
			uart_rx_in => uart_rx_in,
			uart_tx_out => uart_tx_out,
			failure_out => failure_out
		);
		
	clk_process: process
	begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	end process;
	
	reset_process: process
	begin
		reset_n <= '0';
		wait for 500 ns;
		reset_n <= '1';
		wait;
	end process;

end;
