#!/bin/bash

: ${seeds:="4 8 15 16 23 42"}
: ${prefix:=out_}
: ${clk:="the_pll_inst|altpll_component|auto_generated|pll1|clk[0]"}

for seed in $seeds
do
	file=`ls ${prefix}${seed}/*.sta.rpt`
	eval perl -ne "'if (m/MHz.*?([0-9,.]+) MHz.*\Q$clk\E/) {print \"\$1\\n\"; exit}'" $file
done

