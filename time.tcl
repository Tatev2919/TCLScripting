#!/usr/bin/tclsh
set s1 "Hello"
set s2 "World"
set s3 "World"
puts [string compare $s1 $s2]
if { $s2 == $s3} {
   puts "String \'s1\' and \'s2\' are same.";
}

