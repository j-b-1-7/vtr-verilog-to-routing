#!/usr/bin/sh

echo "make"
make

DIR="data"
experiments="m4x2_bp_s2_f0.1
			 m4x2_bp_s4_f0.1"

for exp in $experiments
do
	echo "Running ${exp}..."
	echo "make windpilib DPI_INPUT=$DIR/$exp.bin"
	make windpilib DPI_INPUT="$DIR/$exp.bin"

	echo "vsim -do sim_cmd.do > out_${exp}_sim_cmd"
	vsim -do sim_cmd.do > out_${exp}_sim_cmd
	
	echo "mv tmp.lst lst_${exp}.lst"
	mv tmp.lst lst_${exp}.lst
	
	echo "cp transcript trans_${exp}"
	cp transcript trans_${exp}
	
	echo
done

echo "done"
