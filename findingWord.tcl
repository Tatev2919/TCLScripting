#!/usr/bin/tcl

proc fW {file1 word} {
	set fp [open $file1 r]
	set newfp [open "file1.txt.tmp" w]
	set file_data [read $fp]
	set var "    "

	foreach w $file_data {
		if {$w == $word} {
			set C  $var$word
			puts $C
			set newWord [string map {$word ""} $C] 
			puts -nonewline $newfp $newWord 
		} else {
			puts -nonewline $newfp $w
		}
	}
	close $fp
	close $newfp
}


fW "input.txt" "Ipsum"

