#!/bin/bash
#This will run the TOP command to get the running processes 
#and save it to current directory as top.txt then display the output.
set -e
top=top.txt

top -b -n 1 > ./top.txt

if [ -f ~/top.txt ]
then
cat $top
fi
