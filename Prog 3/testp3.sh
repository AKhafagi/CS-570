#!/bin/bash
#calls all the appropriate scripts and outputs the important parts of the output to a file
#called testOutput
outputp1="test1"
outputp2="testOutput"
finaloutput="final"
num=$(((RANDOM % 20 )+ 1))
printf "calling tester.sh to create output file for %d tests\n\n" $num
tester.sh $num | tee $outputp1
printf "Tester completed successfully\n\n"
printf "calling outputTester.sh to parse important parts of output\n\n"
outputTester.sh $outputp1 $num > $outputp2
printf "analyzing output and checking for errors\n"
analyze.sh $outputp2 | tee $finaloutput