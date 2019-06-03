#! /usr/bin/perl

###############################################################

#Author: Suya Liu, 2012

#This perl script creates a top level file of size 'N'
#for this circuit. the units are systems (ie, created from
#the module 'system' in system.v. All N systems are configured 
# in as close to a square as possible.

#cmd line: ./create_new_sys_file.pl [N]

###############################################################

use strict;
use warnings;
use POSIX;
 
my $num_ARGV = $#ARGV + 1;

unless ($num_ARGV == 1) {
print "The cmd line input is \"./create_new_sys_file.pl <size of circuit in number of systems>.\" \n";
exit(1);
}

my $size = $ARGV[0];
my $max_size = 225;
if ($size < 1)
{
print "The size can't be negative.";
exit(1);
}
elsif ($size > $max_size)
{
print "Circuit may be too big. Consider stopping this code with ^C and switching to a smaller number \n";
}
elsif($size > 0 && $size < 226)
{
}
else
{
print "Please enter a number between 1 and $max_size \n";
exit(1);
}

my $side_len = ceil (sqrt ($size));

my $name = 'system'.$size.'.v';

open (NEWFILE,">$name") or die "Insufficientproviliges \n";

print NEWFILE "`timescale 1ns / 1ns 
module system$size(clk,resetn,boot_iaddr,boot_idata,boot_daddr,boot_ddata,reg_file_b_readdataout,processor_select);
	input clk;
	input resetn;
	input [8:0] processor_select;
	output [31:0] reg_file_b_readdataout;
	input [13:0] boot_iaddr;
	input [31:0] boot_idata;
	input [13:0] boot_daddr;
	input [31:0] boot_ddata;\n";

my $i;
for ($i = 0;$i<$size;$i++)
{
print NEWFILE "\n\treg boot_iwe$i;
	reg boot_dwe$i;";
}

for ($i = 0;$i<$size;$i++)
{
	if ($i == 0)
	{
	print NEWFILE "\n 
	 //Processor 0 control and data signals
	wire rdProc0South;
	wire emptyProc0South;
	wire [31:0] dataInProc0South;

	 //Processor 0 control and data signals
	wire wrProc0South;
	wire fullProc0South;
	wire [31:0] dataOutProc0South;
	
	//Processor 0 control and data signals
	wire rdProc0East;
	wire emptyProc0East;
	wire [31:0] dataInProc0East;

	 //Processor 0 control and data signals
	wire wrProc0East;
	wire fullProc0East;
	wire [31:0] dataOutProc0East;\n";
	}
	elsif ($i == $side_len-1)
	{
	print NEWFILE "	
	 //Processor ". "$i" . " control and data signals
	wire rdProc". "$i" . "South;
	wire emptyProc". "$i" . "South;
	wire [31:0] dataInProc". "$i" . "South;

	 //Processor ". "$i" . " control and data signals
	wire wrProc". "$i" . "South;
	wire fullProc". "$i" . "South;
	wire [31:0] dataOutProc". "$i" . "South;
	
	 //Processor ". "$i" . " control and data signals
	wire wrProc". "$i" . "West;
	wire fullProc". "$i" . "West;
	wire [31:0] dataOutProc". "$i" . "West;

	 //Processor ". "$i" . " control and data signals
	wire rdProc". "$i" . "West;
	wire emptyProc". "$i" . "West;
	wire [31:0] dataInProc". "$i" . "West;\n"
	}
	elsif ($i<$side_len-1)
	{
	print NEWFILE "	
	 //Processor $i control and data signals
	wire rdProc". "$i" . "South;
	wire emptyProc". "$i" . "South;
	wire [31:0] dataInProc". "$i" . "South;

	 //Processor ". "$i" . " control and data signals
	wire wrProc". "$i" . "South;
	wire fullProc". "$i" . "South;
	wire [31:0] dataOutProc". "$i" . "South;

	 //Processor ". "$i" . " control and data signals
	wire rdProc". "$i" . "East;
	wire emptyProc". "$i" . "East;
	wire [31:0] dataInProc". "$i" . "East;
	
	//Processor ". "$i" . " control and data signals
	wire wrProc". "$i" . "East;
	wire fullProc". "$i" . "East;
	wire [31:0] dataOutProc". "$i" . "East;

	 //Processor ". "$i" . " control and data signals
	wire rdProc". "$i" . "West;
	wire emptyProc". "$i" . "West;
	wire [31:0] dataInProc". "$i" . "West;
	
	//Processor ". "$i" . " control and data signals
	wire wrProc". "$i" . "West;
	wire fullProc". "$i" . "West;
	wire [31:0] dataOutProc". "$i" . "West;\n"
	}
	#elsif(($i==((floor($size/$side_len))*$side_len)) || ($i == (($side_len*$side_len)-1)))
        elsif(((($i % $side_len == 0)) && ($size - $i <= $side_len)) || ($i == ($side_len*($side_len-1))))
	{
	print NEWFILE "
	 //Processor" . "$i" ." control and data signals
	wire wrProc". "$i" ."North;
	wire fullProc". "$i" ."North;
	wire [31:0] dataOutProc". "$i" ."North;
	
	 //Processor ". "$i" ." control and data signals
	wire rdProc" . "$i" ."North;
	wire emptyProc" . "$i" ."North;
	wire [31:0] dataInProc" . "$i" ."North;

	 //Processor " . "$i" ." control and data signals
	wire rdProc" . "$i" ."East;
	wire emptyProc" . "$i" ."East;
	wire [31:0] dataInProc" . "$i" ."East;

	 //Processor " . "$i" ." control and data signals
	wire wrProc" . "$i" ."East;
	wire fullProc" . "$i" ."East;
	wire [31:0] dataOutProc" . "$i" ."East;\n";
	}
	elsif (($i == $size-1 && $size % $side_len == 0) || ($i == (($side_len*$side_len)-1)))
	{
	print NEWFILE "
	//Processor " . "$i" ." control and data signals
	wire rdProc" . "$i" ."North;
	wire emptyProc" . "$i" ."North;
	wire [31:0] dataInProc" . "$i" ."North;

	 //Processor " . "$i" ." control and data signals
	wire wrProc" . "$i" ."North;
	wire fullProc" . "$i" ."North;
	wire [31:0] dataOutProc" . "$i" ."North;

	 //Processor " . "$i" ." control and data signals
	wire wrProc" . "$i" ."West;
	wire fullProc" . "$i" ."West;
	wire [31:0] dataOutProc" . "$i" ."West;
	
	 //Processor " . "$i" ." control and data signals
	wire rdProc" . "$i" ."West;
	wire emptyProc" . "$i" ."West;
	wire [31:0] dataInProc" . "$i" ."West;\n"
	}
	#elsif(($i>((floor($size/$side_len))*$side_len) &&($i < $size-1)) || ($i > ($side_len*($side_len-1)) && $i < (($side_len*$side_len)-1)))
	elsif((($size - $i < $side_len)&&($i < $size-1)) || ($i > ($side_len*($side_len-1)) && $i < (($side_len*$side_len)-1)))
	{
	print NEWFILE "
	//Processor " . "$i" ." control and data signals
	wire wrProc" . "$i" ."North;
	wire fullProc" . "$i" ."North;
	wire [31:0] dataOutProc" . "$i" ."North;
		
	 //Processor " . "$i" ." control and data signals
	wire rdProc" . "$i" ."North;
	wire emptyProc" . "$i" ."North;
	wire [31:0] dataInProc" . "$i" ."North;

	 //Processor " . "$i" ." control and data signals
	wire rdProc" . "$i" ."East;
	wire emptyProc" . "$i" ."East;
	wire [31:0] dataInProc" . "$i" ."East;
	
	 //Processor " . "$i" ." control and data signals
	wire wrProc" . "$i" ."East;
	wire fullProc" . "$i" ."East;
	wire [31:0] dataOutProc" . "$i" ."East;

	 //Processor " . "$i" ." control and data signals
	wire rdProc" . "$i" ."West;
	wire emptyProc" . "$i" ."West;
	wire [31:0] dataInProc" . "$i" ."West;

	 //Processor " . "$i" ." control and data signals
	wire wrProc" . "$i" ."West;
	wire fullProc" . "$i" ."West;
	wire [31:0] dataOutProc" . "$i" ."West;\n"
	}	
	elsif($i % $side_len == 0)
	{
	print NEWFILE "
	//Processor " . "$i" ." control and data signals
	wire wrProc" . "$i" ."North;
	wire fullProc" . "$i" ."North;
	wire [31:0] dataOutProc" . "$i" ."North;

	 //Processor " . "$i" ." control and data signals
	wire rdProc" . "$i" ."North;
	wire emptyProc" . "$i" ."North;
	wire [31:0] dataInProc" . "$i" ."North;
	
	 //Processor " . "$i" ." control and data signals
	wire rdProc" . "$i" ."South;
	wire emptyProc" . "$i" ."South;
	wire [31:0] dataInProc" . "$i" ."South;
	
	 //Processor " . "$i" ." control and data signals
	wire wrProc" . "$i" ."South;
	wire fullProc" . "$i" ."South;
	wire [31:0] dataOutProc" . "$i" ."South;
	
	 //Processor " . "$i" ." control and data signals
	wire rdProc" . "$i" ."East;
	wire emptyProc" . "$i" ."East;
	wire [31:0] dataInProc" . "$i" ."East;

	 //Processor " . "$i" ." control and data signals
	wire wrProc" . "$i" ."East;
	wire fullProc" . "$i" ."East;
	wire [31:0] dataOutProc" . "$i" ."East;\n"
	}
	elsif ($i % $side_len == $side_len - 1)
	{
	print NEWFILE "
	//Processor " . "$i" ." control and data signals
	wire wrProc" . "$i" ."North;
	wire fullProc" . "$i" ."North;
	wire [31:0] dataOutProc" . "$i" ."North;

	//Processor " . "$i" ." control and data signals
        wire rdProc" . "$i" ."North;
        wire emptyProc" . "$i" ."North;
        wire [31:0] dataInProc" . "$i" ."North;

	//Processor " . "$i" ." control and data signals
	wire rdProc" . "$i" ."South;
	wire emptyProc" . "$i" ."South;
	wire [31:0] dataInProc" . "$i" ."South;
		
	 //Processor " . "$i" ." control and data signals
	wire wrProc" . "$i" ."South;
	wire fullProc" . "$i" ."South;
	wire [31:0] dataOutProc" . "$i" ."South;

	 //Processor " . "$i" ." control and data signals
	wire wrProc" . "$i" ."West;
	wire fullProc" . "$i" ."West;
	wire [31:0] dataOutProc" . "$i" ."West;
	
	 //Processor " . "$i" ." control and data signals
	wire rdProc" . "$i" ."West;
	wire emptyProc" . "$i" ."West;
	wire [31:0] dataInProc" . "$i" ."West;\n"
	}
	else
	{
	print NEWFILE "
	//Processor " . "$i" ." control and data signals
	wire rdProc" . "$i" ."North;
	wire emptyProc" . "$i" ."North;
	wire [31:0] dataInProc" . "$i" ."North;

	 //Processor " . "$i" ." control and data signals
	wire wrProc" . "$i" ."North;
	wire fullProc" . "$i" ."North;
	wire [31:0] dataOutProc" . "$i" ."North;

	 //Processor " . "$i" ." control and data signals
	wire rdProc" . "$i" ."South;
	wire emptyProc" . "$i" ."South;
	wire [31:0] dataInProc" . "$i" ."South;
	
	 //Processor " . "$i" ." control and data signals
	wire wrProc" . "$i" ."South;
	wire fullProc" . "$i" ."South;
	wire [31:0] dataOutProc" . "$i" ."South;

	 //Processor " . "$i" ." control and data signals
	wire rdProc" . "$i" ."East;
	wire emptyProc" . "$i" ."East;
	wire [31:0] dataInProc" . "$i" ."East;
	
	 //Processor " . "$i" ." control and data signals
	wire wrProc" . "$i" ."East;
	wire fullProc" . "$i" ."East;
	wire [31:0] dataOutProc" . "$i" ."East;

	 //Processor " . "$i" ." control and data signals
	wire rdProc" . "$i" ."West;
	wire emptyProc" . "$i" ."West;
	wire [31:0] dataInProc" . "$i" ."West;

	 //Processor " . "$i" ." control and data signals
	wire wrProc" . "$i" ."West;
	wire fullProc" . "$i" ."West;
	wire [31:0] dataOutProc" . "$i" ."West;\n";
	}
}	
	
print NEWFILE "\n";

for ($i = 0;$i<$size;$i++)
{

#if ($i == 8)
#{
#my $out;
#$out =floor($size/$side_len);
#print "$out\n";
#$out = (floor($size/$side_len))*$side_len;
#print "$out\n";
#}
	print NEWFILE " 
//PROCESSOR " . "$i" ."
system proc" . "$i" ."(.clk(clk),
	.resetn (resetn),
	.boot_iaddr(boot_iaddr),
	.boot_idata(boot_idata),
	.boot_iwe(boot_iwe" . "$i" ."),
	.boot_daddr(boot_daddr),
	.boot_ddata(boot_ddata),
	.boot_dwe(boot_dwe" . "$i" ."),";

	if ($i == 0)
	{
	print NEWFILE "
	.rdSouth(rdProc" . "$i" ."South),
	.emptySouth(emptyProc" . "$i" ."South),
	.dataInSouth(dataInProc" . "$i" ."South),
	.wrSouth(wrProc" . "$i" ."South),
	.fullSouth(fullProc" . "$i" ."South),
	.dataOutSouth(dataOutProc" . "$i" ."South),
	.rdEast(rdProc" . "$i" ."East),
	.emptyEast(emptyProc" . "$i" ."East),
	.dataInEast(dataInProc" . "$i" ."East),
	.wrEast(wrProc" . "$i" ."East),
	.fullEast(fullProc" . "$i" ."East),
	.dataOutEast(dataOutProc" . "$i" ."East),

	.reg_file_b_readdataout(reg_file_b_readdataout));\n";
	}
	elsif ($i == $side_len-1)
	{
	print NEWFILE "	
	.rdSouth(rdProc" . "$i" ."South),
	.emptySouth(emptyProc" . "$i" ."South),
	.dataInSouth(dataInProc" . "$i" ."South),
	.wrSouth(wrProc" . "$i" ."South),
	.fullSouth(fullProc" . "$i" ."South),
	.dataOutSouth(dataOutProc" . "$i" ."South),
	.rdWest(rdProc" . "$i" ."West),
	.emptyWest(emptyProc" . "$i" ."West),
	.dataInWest(dataInProc" . "$i" ."West),
	.wrWest(wrProc" . "$i" ."West),
	.fullWest(fullProc" . "$i" ."West),
	.dataOutWest(dataOutProc" . "$i" ."West));\n";
	}
	elsif ($i<$side_len-1)
	{
	print NEWFILE "	
	.rdSouth(rdProc" . "$i" ."South),
	.emptySouth(emptyProc" . "$i" ."South),
	.dataInSouth(dataInProc" . "$i" ."South),
	.wrSouth(wrProc" . "$i" ."South),
	.fullSouth(fullProc" . "$i" ."South),
	.dataOutSouth(dataOutProc" . "$i" ."South),
	.rdEast(rdProc" . "$i" ."East),
	.emptyEast(emptyProc" . "$i" ."East),
	.dataInEast(dataInProc" . "$i" ."East),
	.wrEast(wrProc" . "$i" ."East),
	.fullEast(fullProc" . "$i" ."East),
	.dataOutEast(dataOutProc" . "$i" ."East),
	.rdWest(rdProc" . "$i" ."West),
	.emptyWest(emptyProc" . "$i" ."West),
	.dataInWest(dataInProc" . "$i" ."West),
	.wrWest(wrProc" . "$i" ."West),
	.fullWest(fullProc" . "$i" ."West),
	.dataOutWest(dataOutProc" . "$i" ."West));\n";
	}
	elsif (($i == $size-1 && ($size % $side_len == 0)) || ($i == ($side_len*$side_len)-1))
	{
	print NEWFILE "
	.rdNorth(rdProc" . "$i" ."North),
	.emptyNorth(emptyProc" . "$i" ."North),
	.dataInNorth(dataInProc" . "$i" ."North),
	.wrNorth(wrProc" . "$i" ."North),
	.fullNorth(fullProc" . "$i" ."North),
	.dataOutNorth(dataOutProc" . "$i" ."North),
	.wrWest(wrProc" . "$i" ."West),
	.fullWest(fullProc" . "$i" ."West),
	.dataOutWest(dataOutProc" . "$i" ."West),
	.rdWest(rdProc" . "$i" ."West),
	.emptyWest(emptyProc" . "$i" ."West),
	.dataInWest(dataInProc" . "$i" ."West));\n";
	}	
	#elsif(($i==((floor($size/$side_len))*$side_len)) || ($i == ($side_len*($side_len-1))))
	elsif(((($i % $side_len == 0)) && ($size - $i <= $side_len)) || ($i == ($side_len*($side_len-1))))
	{
	print NEWFILE "
	.rdNorth(rdProc" . "$i" ."North),
	.emptyNorth(emptyProc" . "$i" ."North),
	.dataInNorth(dataInProc" . "$i" ."North),
	.wrNorth(wrProc" . "$i" ."North),
	.fullNorth(fullProc" . "$i" ."North),
	.dataOutNorth(dataOutProc" . "$i" ."North),
	.rdEast(rdProc" . "$i" ."East),
	.emptyEast(emptyProc" . "$i" ."East),
	.dataInEast(dataInProc" . "$i" ."East),
	.wrEast(wrProc" . "$i" ."East),
	.fullEast(fullProc" . "$i" ."East),
	.dataOutEast(dataOutProc" . "$i" ."East));\n";
	}
	#elsif((($i>((floor($size/$side_len))*$side_len) &&($i < $size-1))) || ($i > ($side_len*($side_len-1)) && $i < (($side_len*$side_len)-1)))
	elsif((($size - $i < $side_len)&&($i < $size-1))|| ($i > ($side_len*($side_len-1)) && $i < (($side_len*$side_len)-1)))
	{
	print NEWFILE "
	.rdNorth(rdProc" . "$i" ."North),
	.emptyNorth(emptyProc" . "$i" ."North),
	.dataInNorth(dataInProc" . "$i" ."North),
	.wrNorth(wrProc" . "$i" ."North),
	.fullNorth(fullProc" . "$i" ."North),
	.dataOutNorth(dataOutProc" . "$i" ."North),
	.rdEast(rdProc" . "$i" ."East),
	.emptyEast(emptyProc" . "$i" ."East),
	.dataInEast(dataInProc" . "$i" ."East),
	.wrEast(wrProc" . "$i" ."East),
	.fullEast(fullProc" . "$i" ."East),
	.dataOutEast(dataOutProc" . "$i" ."East),
	.rdWest(rdProc" . "$i" ."West),
	.emptyWest(emptyProc" . "$i" ."West),
	.dataInWest(dataInProc" . "$i" ."West),
	.wrWest(wrProc" . "$i" ."West),
	.fullWest(fullProc" . "$i" ."West),
	.dataOutWest(dataOutProc" . "$i" ."West));\n";
	}
	elsif($i % $side_len == 0)
	{
	print NEWFILE "
	.wrNorth(wrProc" . "$i" ."North),
	.fullNorth(fullProc" . "$i" ."North),
	.dataOutNorth(dataOutProc" . "$i" ."North),
	.rdNorth(rdProc" . "$i" ."North),
	.emptyNorth(emptyProc" . "$i" ."North),
	.dataInNorth(dataInProc" . "$i" ."North),
	.rdSouth(rdProc" . "$i" ."South),
	.emptySouth(emptyProc" . "$i" ."South),
	.dataInSouth(dataInProc" . "$i" ."South),
	.wrSouth(wrProc" . "$i" ."South),
	.fullSouth(fullProc" . "$i" ."South),
	.dataOutSouth(dataOutProc" . "$i" ."South),
	.rdEast(rdProc" . "$i" ."East),
	.emptyEast(emptyProc" . "$i" ."East),
	.dataInEast(dataInProc" . "$i" ."East),
	.wrEast(wrProc" . "$i" ."East),
	.fullEast(fullProc" . "$i" ."East),
	.dataOutEast(dataOutProc" . "$i" ."East));\n";
	}
	elsif ($i % $side_len == $side_len - 1)
	{
	print NEWFILE "
	.rdNorth(rdProc" . "$i" ."North),
	.emptyNorth(emptyProc" . "$i" ."North),
	.dataInNorth(dataInProc" . "$i" ."North),
	.wrNorth(wrProc" . "$i" ."North),
	.fullNorth(fullProc" . "$i" ."North),
	.dataOutNorth(dataOutProc" . "$i" ."North),
	.rdSouth(rdProc" . "$i" ."South),
	.emptySouth(emptyProc" . "$i" ."South),
	.dataInSouth(dataInProc" . "$i" ."South),
	.wrSouth(wrProc" . "$i" ."South),
	.fullSouth(fullProc" . "$i" ."South),
	.dataOutSouth(dataOutProc" . "$i" ."South),
	.rdWest(rdProc" . "$i" ."West),
	.emptyWest(emptyProc" . "$i" ."West),
	.dataInWest(dataInProc" . "$i" ."West),
	.wrWest(wrProc" . "$i" ."West),
	.fullWest(fullProc" . "$i" ."West),
	.dataOutWest(dataOutProc" . "$i" ."West));\n";
	}
	else
	{
	print NEWFILE "
	.rdNorth(rdProc" . "$i" ."North),
	.emptyNorth(emptyProc" . "$i" ."North),
	.dataInNorth(dataInProc" . "$i" ."North),
	.wrNorth(wrProc" . "$i" ."North),
	.fullNorth(fullProc" . "$i" ."North),
	.dataOutNorth(dataOutProc" . "$i" ."North),
	.rdSouth(rdProc" . "$i" ."South),
	.emptySouth(emptyProc" . "$i" ."South),
	.dataInSouth(dataInProc" . "$i" ."South),
	.wrSouth(wrProc" . "$i" ."South),
	.fullSouth(fullProc" . "$i" ."South),
	.dataOutSouth(dataOutProc" . "$i" ."South),
	.rdEast(rdProc" . "$i" ."East),
	.emptyEast(emptyProc" . "$i" ."East),
	.dataInEast(dataInProc" . "$i" ."East),
	.wrEast(wrProc" . "$i" ."East),
	.fullEast(fullProc" . "$i" ."East),
	.dataOutEast(dataOutProc" . "$i" ."East),
	.rdWest(rdProc" . "$i" ."West),
	.emptyWest(emptyProc" . "$i" ."West),
	.dataInWest(dataInProc" . "$i" ."West),
	.wrWest(wrProc" . "$i" ."West),
	.fullWest(fullProc" . "$i" ."West),
	.dataOutWest(dataOutProc" . "$i" ."West));\n";
	}
}

my $j;
my $k;
#create the connections between adjacent system modules
for ($i = 1;$i<$size;$i++)
{
	#for the first row, starting from the second one, it connects to the one left of it
	if ($i<=$side_len-1)
	{
	$j = $i-1;
	print NEWFILE "	
	//FIFO " . "$i" ." TO " . "$j" ." 
fifo fifo_proc" . "$i" ."_to_proc" . "$j" ."(
	.clk(clk),
	.resetn(resetn),
	.wr(wrProc" . "$i" ."West),
	.full(fullProc" . "$i" ."West),
	.dataIn(dataOutProc" . "$i" ."West),
	.rd(rdProc" . "$j" ."East),
	.empty(emptyProc" . "$j" ."East),
	.dataOut(dataInProc" . "$j" ."East));\n";
	
#	//FIFO " . "$j" ." TO " . "$i" ."
#fifo fifo_proc" . "$j" ."_to_proc" . "$i" ."(
#	.clk(clk),
#	.resetn(resetn),
#	.wr(wrProc" . "$j" ."East),
#	.full(fullProc" . "$j" ."East),
#	.dataIn(dataOutProc" . "$j" ."East),
#	.rd(rdProc" . "$i" ."West),
#	.empty(emptyProc" . "$i" ."West),
#	.dataOut(dataInProc" . "$i" ."West));\n";
	}	
	elsif($i % $side_len == 0)
	{
	#the ones that are on the left most side: connect to the one above it
	$j = $i-$side_len;
	print NEWFILE "
	//FIFO " . "$i" ." TO " . "$j" ." 
fifo fifo_proc" . "$i" ."_to_proc" . "$j" ."(
	.clk(clk),
	.resetn(resetn),
	.wr(wrProc" . "$i" ."North),
	.full(fullProc" . "$i" ."North),
	.dataIn(dataOutProc" . "$i" ."North),
	.rd(rdProc" . "$j" ."South),
	.empty(emptyProc" . "$j" ."South),
	.dataOut(dataInProc" . "$j" ."South));\n";
	
#	//FIFO " . "$j" ." TO " . "$i" ."
#fifo fifo_proc" . "$j" ."_to_proc" . "$i" ."(
#	.clk(clk),
#	.resetn(resetn),
#	.wr(wrProc" . "$j" ."South),
#	.full(fullProc" . "$j" ."South),
#	.dataIn(dataOutProc" . "$j" ."South),
#	.rd(rdProc" . "$i" ."North),
#	.empty(emptyProc" . "$i" ."North),
#	.dataOut(dataInProc" . "$i" ."North));\n";
	}
	else
	{
	#connect to system module that's above and to the left of it
	$j = $i-1;
	$k = $i-$side_len;
	print NEWFILE "
	//FIFO " . "$i" ." TO " . "$j" ." 
fifo fifo_proc" . "$i" ."_to_proc" . "$j" ."(
	.clk(clk),
	.resetn(resetn),
	.wr(wrProc" . "$i" ."West),
	.full(fullProc" . "$i" ."West),
	.dataIn(dataOutProc" . "$i" ."West),
	.rd(rdProc" . "$j" ."East),
	.empty(emptyProc" . "$j" ."East),
	.dataOut(dataInProc" . "$j" ."East));\n";
	
#	//FIFO " . "$j" ." TO " . "$i" ."
#fifo fifo_proc" . "$j" ."_to_proc" . "$i" ."(
#	.clk(clk),
#	.resetn(resetn),
#	.wr(wrProc" . "$j" ."East),
#	.full(fullProc" . "$j" ."East),
#	.dataIn(dataOutProc" . "$j" ."East),
#	.rd(rdProc" . "$i" ."West),
#	.empty(emptyProc" . "$i" ."West),
#	.dataOut(dataInProc" . "$i" ."West));
	
	print NEWFILE "
	//FIFO " . "$i" ." TO " . "$k" ." 
fifo fifo_proc" . "$i" ."_to_proc" . "$k" ."(
	.clk(clk),
	.resetn(resetn),
	.wr(wrProc" . "$i" ."North),
	.full(fullProc" . "$i" ."North),
	.dataIn(dataOutProc" . "$i" ."North),
	.rd(rdProc" . "$k" ."South),
	.empty(emptyProc" . "$k" ."South),
	.dataOut(dataInProc" . "$k" ."South));\n";
	
#	//FIFO " . "$k" ." TO " . "$i" ."
#fifo fifo_proc" . "$k" ."_to_proc" . "$i" ."(
#	.clk(clk),
#	.resetn(resetn),
#	.wr(wrProc" . "$k" ."South),
#	.full(fullProc" . "$k" ."South),
#	.dataIn(dataOutProc" . "$k" ."South),
#	.rd(rdProc" . "$i" ."North),
#	.empty(emptyProc" . "$i" ."North),
#	.dataOut(dataInProc" . "$i" ."North));\n";
	}
}		


print NEWFILE "
	/**************** Boot loader ********************/
	/*******Boot up each processor one by one*********/
	always@(posedge clk)
	begin
	case(processor_select)";

for ($i = 0;$i < $size+1; $i++)
{print NEWFILE "
		$i: begin\n";
	for ($j = 0;$j < $size ; $j++)
	{
	if ($i == $size)
	{
	print NEWFILE "\t\t\tboot_iwe$j = 0;
			boot_dwe$j = 0;\n";
	}
	elsif ($i == $j)
	{
	print NEWFILE "\t\t\tboot_iwe$j = ~resetn;
			boot_dwe$j = ~resetn;\n";
	}	
	else
	{
	print NEWFILE "\t\t\tboot_iwe$j = resetn;
			boot_dwe$j = resetn;\n";
	}
	}
print NEWFILE "\t\tend";
}

print NEWFILE "		
	endcase
end
endmodule";
close(NEWFILE);
