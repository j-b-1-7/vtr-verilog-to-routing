----------------------------------------------------------------------------
--  This file is a part of the GRLIB VHDL IP LIBRARY
--  Copyright (C) 2004 GAISLER RESEARCH
--
--  This program is free software; you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation; either version 2 of the License, or
--  (at your option) any later version.
--
--  See the file COPYING for the full details of the license.
--
-----------------------------------------------------------------------------
-- Entity: 	syncram_dp
-- File:	syncram_dp.vhd
-- Author:	Jiri Gaisler - Gaisler Research
-- Description:	syncronous dual-port ram with tech selection
------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

library grlib;
use grlib.tech.all;
library gaisler;
use gaisler.memory.all;


entity syncram_dp is
  generic (tech : integer := 0; abits : integer := 6; dbits : integer := 8 );
  port (
    clk1     : in std_ulogic;
    address1 : in std_logic_vector((abits -1) downto 0);
    datain1  : in std_logic_vector((dbits -1) downto 0);
    dataout1 : out std_logic_vector((dbits -1) downto 0);
    enable1  : in std_ulogic;
    write1   : in std_ulogic;
    clk2     : in std_ulogic;
    address2 : in std_logic_vector((abits -1) downto 0);
    datain2  : in std_logic_vector((dbits -1) downto 0);
    dataout2 : out std_logic_vector((dbits -1) downto 0);
    enable2  : in std_ulogic;
    write2   : in std_ulogic); 
end;

architecture rtl of syncram_dp is
	-- Shared memory
    type mem_type is array ( (2**abits)-1 downto 0 ) of std_logic_vector(dbits-1 downto 0);
    shared variable mem : mem_type;
begin

	-- Port 1
	process(clk1)
	begin
		 if(clk1'event and clk1='1') then
			  if(write1='1') then
					mem(conv_integer(address1)) := datain1;
			  end if;
			  
			  if(enable1='1') then
					dataout1 <= mem(conv_integer(address1));
				else
					dataout1 <= (others => '0');
				end if;
		 end if;
	end process;

	-- Port 2
	process(clk2)
	begin
		 if(clk2'event and clk2='1') then
			  if(write2='1') then
					mem(conv_integer(address2)) := datain2;
			  end if;
			  
			  if(enable2='1') then
					dataout2 <= mem(conv_integer(address2));
				else
					dataout2 <= (others => '0');
				end if;
		 end if;
	end process;
	
end;

