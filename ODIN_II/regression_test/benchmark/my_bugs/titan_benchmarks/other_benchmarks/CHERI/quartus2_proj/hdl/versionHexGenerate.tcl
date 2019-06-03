 # Copyright (c) 2012 Jonathan Woodruff
 # All rights reserved.
 #
 # This software was developed by SRI International and the University of
 # Cambridge Computer Laboratory under DARPA/AFRL contract (FA8750-10-C-0237)
 # ("CTSRD"), as part of the DARPA CRASH research programme.
 #
 # Redistribution and use in source and binary forms, with or without
 # modification, are permitted provided that the following conditions
 # are met:
 # 1. Redistributions of source code must retain the above copyright
 #    notice, this list of conditions and the following disclaimer.
 # 2. Redistributions in binary form must reproduce the above copyright
 #    notice, this list of conditions and the following disclaimer in the
 #    documentation and/or other materials provided with the distribution.
 #
 # THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 # ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 # IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 # ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 # FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 # DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 # OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 # HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 # LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 # OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 # SUCH DAMAGE.
 #

 # Generate a Hex file containing version information for initializing a 
 # small ROM in a quartus project.
 
 proc cksum {bytes} {
	# Calculate Intel-hex CRC for list of bytes (usual numbers in hex format
	# but without prefixes like b|w|d|q)
	set sum 0
	foreach b $bytes {
	    incr sum 0x$b
	}
	set sum [expr {(1 + ~$sum) & 0xFF}] ;# bcb
	return $sum
}
 

# Generate 2, 8-nibble strings containing the (day, month & year), and 
# the (hour, minutes & seconds) of the build in binary coded decimal.
set versionDayMonthYear [ clock format [ clock seconds ] -format %d%m%Y ]
set versionHourMinutesSeconds "00"
append versionHourMinutesSeconds [ clock format [ clock seconds ] -format %H%M%S ]

puts "$versionHourMinutesSeconds\n"

# Get svn version string
set svnVersionString [exec svnversion ../../]
puts "$svnVersionString\n"
regexp {\d+} $svnVersionString svnVersionString
while {[string length $svnVersionString] < 8} {
	set svnVersionString [format "%s%s" "0" $svnVersionString]
}
puts "$svnVersionString\n"

# Get the host name, truncate to the first 8 characters in two sets of 4
# to match the 4-byte wide memory we will have.
set hostNameString	[exec hostname]
while {[string length $hostNameString] < 8} {
	set hostNameString [format "%s%s" "0" $hostNameString]
}
set hostNameString1	[string range $hostNameString 0 3]
set hostNameString2	[string range $hostNameString 4 7]
binary scan $hostNameString1 "H*" hostNameHex1
binary scan $hostNameString2 "H*" hostNameHex2
puts "$hostNameString1\n"
puts "$hostNameString2\n"

# Create output file
set romFileName "version.hex"
set romFile [open $romFileName "w"]

# Output the build date
set outStr "04000000$versionDayMonthYear"
puts $romFile [format ":%s%X" $outStr [cksum [regexp -all -inline {..} $outStr]]]
set outStr "04000100$versionHourMinutesSeconds"
puts $romFile [format ":%s%X" $outStr [cksum [regexp -all -inline {..} $outStr]]]
set outStr "04000200$svnVersionString"
puts $romFile [format ":%s%X" $outStr [cksum [regexp -all -inline {..} $outStr]]]
set outStr "04000300$hostNameHex1"
puts $romFile [format ":%s%X" $outStr [cksum [regexp -all -inline {..} $outStr]]]
set outStr "04000400$hostNameHex2"
puts $romFile [format ":%s%X" $outStr [cksum [regexp -all -inline {..} $outStr]]]
puts $romFile ":00000001FF"
close $romFile
