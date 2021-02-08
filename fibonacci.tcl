#!/usr/bin/tcl

proc fib {num} {
	if {$num <= 2} {
		return 1
	}
	return [expr [fib [expr $num-2]] + [fib [expr $num -1 ]]]
}

puts [fib 8]


