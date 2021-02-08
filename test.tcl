#!/usr/bin/tclsh
puts "Hello World!"
set a 3
puts $a
set str "hellooo\nworld"
set myVar {red green blue}
if 0 {
   my first program in Tcl program
   Its very simple
}

puts [expr $a + 3+2]
puts [lindex $myVar 4]
puts stdout $str
set marks(english) 80
puts $marks(english)
set marks(mathematics) 20
puts $marks(mathematics)
set varA "10"
puts $varA
set sum [expr $varA +20]
puts $sum


set variableA "10"
set tcl_precision 4
set result [expr $variableA / 9.0];
puts $result
if {$result > 1} {
	puts "True"
}

puts [scan "90"  {%[0-9]} m]
puts [scan "abc" {%[a-z]} m]
puts [scan "abc" {%[A-Z]} m]
puts [scan "ABC" {%[A-Z]} m]

