#!/usr/bin/tcl

#proc myRand { min max } {
 #   set maxFactor [expr [expr $max + 1] - $min]
  #  set value [expr int([expr rand() * 100])]
   # set value [expr [expr $value % $maxFactor] + $min]
#	return $value
#}

proc myRand1 { str } {
	set range [string length $str]
	set value [expr int([expr rand() * 100])]
	set value [expr $value % $range]
#        puts $range 
	return $value
}

puts [myRand1 "hello" ]

set file2 [open "inp.txt" r]
set file1 [open "input.txt" r]

set status [catch {exec diff $file1 $file2} result]
if {$status == 0} {
   puts "$file1 and $file2 are identical"
} elseif {$status == 1} {
   puts "** $file1 and $file2 are different **"
   puts "***************************************************************************"
   puts ""
   puts $result
   puts ""
   puts "***************************************************************************"
} else {
   puts stderr "** diff exited with status $status **"
   puts stderr "***********************************************************************"
   puts stderr $result
   puts stderr "***********************************************************************"
}
