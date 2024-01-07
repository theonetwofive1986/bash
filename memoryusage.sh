#!/bin/bash
#This is to display the processes and sorted by memory usage from high to low.

#To display the executed command and stop when encountered an error.
set -e

#This will run and capture top and sort by Memory usage from high to low then save it to ./top.txt.
top -b -n 1 -o +%MEM > ./top.txt

if [ -f ~/top.txt ]
then 
cat ./top.txt
fi

