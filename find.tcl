#!/usr/bin/tcl

proc find { path fileName} {
	set fpath [append path "" $fileName]
	if { [file exist $fpath] } {
		puts $fpath
	} else {
	       	puts 0 
	}
	return 0
}

puts [find "/home/student/" "tclCodes"]

# find word in file and shift it 3 spaces 
