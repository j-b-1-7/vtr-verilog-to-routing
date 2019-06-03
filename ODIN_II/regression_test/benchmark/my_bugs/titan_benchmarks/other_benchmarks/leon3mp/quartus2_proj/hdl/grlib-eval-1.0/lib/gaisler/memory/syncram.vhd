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
-- Entity: 	syncram
-- File:	syncram.vhd
-- Author:	Jiri Gaisler - Gaisler Research
-- Description:	syncronous 1-port ram with tech selection
------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
library grlib;
use grlib.tech.all;
library gaisler;
use gaisler.memory.all;
use gaisler.mem_gen.all;

  
entity syncram is
  generic (tech : integer := 0; abits : integer := 6; dbits : integer := 8 );
  port (
    clk      : in std_ulogic;
    address  : in std_logic_vector((abits -1) downto 0);
    datain   : in std_logic_vector((dbits -1) downto 0);
    dataout  : out std_logic_vector((dbits -1) downto 0);
    enable   : in std_ulogic;
    write    : in std_ulogic); 
end;

architecture rtl of syncram is
begin


   u0 : generic_syncram generic map (abits, dbits)
		port map (clk, address, datain, dataout, write);

end;

