#!/bin/bash
#This will run the TOP command to get the running processes 
#and save it to current directory as top.txt then display the output.


set -e

#Create a variable to store the output of TOP
top=top.txt

#Execute top and send the output to a file.
top -b -n 1 > ./top.txt

#Display the content of the output of top from the text file if existing.
if [ -f ~/top.txt ]
then
cat $top
fi
