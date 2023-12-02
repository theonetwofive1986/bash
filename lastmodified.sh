#!/bin/bash
#This script is to list the files inside /etc that has been modified then filtered using grep.

#To stop the script when encountered an error.
set -e  

#Create a variable that contains the output of find.
lastmodified=lastmodified.txt

#List files and directories inside /etc modified within the last 24 hours and redirect the output to ./lastmodified.txt
#The output is sorted by date, -k is the field then 8 is the field number 1 is the character origin.
find /etc  -maxdepth 5 -type f,d -newermt "-24 hour"  -ls | sort -k 8.1 > ./lastmodified.txt

#Display the content of lastmodified.txt
if [-f ~/lastmodified.txt]
then
cat $lastmodified
else
echo "Check the script."
fi
