#!/usr/bin/tclsh

set fp [open "input.txt" w+]
puts $fp "text to write"
close $fp
set fp [open "input.txt" r]
while { [gets $fp data]>=0 } {
	puts $data
}

close $fp

set inp [open "|sort /etc/passwd" r ]
set contents [split [read $inp] \n] 
set fp [open "inp.txt" r]
while { [gets $input data]>=0 } {
	puts $data
}
close $inp
