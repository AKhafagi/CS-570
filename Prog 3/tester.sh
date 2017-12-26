#!/bin/bash
# A simple script to test prog 3 by randomizing a seed and running p3 with it 
# this test will test input different seeds to check if p3 works

printf "testing program 3 %d times with random seeds\n" $1
num=$1
for i in $(seq 1 "$num") 
do
seed=$RANDOM
printf "running attempt #%d\n" $i
printf "running protocol 0 with seed:%d\n" $seed
  p3 0 $seed
  printf "\n"
  printf "running protocol 1 with seed:%d\n" $seed
  p3 1 $seed
  printf "\n"
done
