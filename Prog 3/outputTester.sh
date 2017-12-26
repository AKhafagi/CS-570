#!/bin/bash
# A simple script to print out the important parts of the tester.sh output 
number=1
printf "Printing the important parts of the test output with %d tests\n\n" $2

awk -v var="$number" '/DAILY REPORT:/ {

do_print=1
print "attempt#", var
var=var+1
}
     do_print==1 { print }  
     NF==0 {
     do_print=0
     }' $1
printf "\nPrinting the important parts of the test output done\n"
