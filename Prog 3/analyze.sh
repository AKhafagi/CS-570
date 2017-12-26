#!/bin/bash
# A simple script to print out the important parts of the tester.sh output 
number=1
awk -v var="$number" '/=/ {
	print "attempt #", var, "line #", NR
 if ($3!="=0=")
	print "Error encountered" > "/dev/stderr"
	else
		print "Success"
	var=var+1
}' $1 