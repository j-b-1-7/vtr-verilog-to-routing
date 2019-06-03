#
# Makefile
#

CPP       = g++
CPPFLAGS  = -Wall -O2
LFLAGS    =

PROG   := sim


b2flit: bin_to_flit.cpp const.h
	$(CPP) $(CPPFLAGS) bin_to_flit.cpp -o b2flit


clean:
	rm -rf b2flit

