#!/bin/bash
#This script is to list the files inside /etc that has been modified then filtered using grep.

#To stop the script when encountered an error.
set -e  

#Create a variable that contains the output of find.
lastmodified=lastmodified.txt

#List a files and directories inside /etc and filter with grep then redirect the output to ./lastmodified.txt
find /etc  -maxdepth 8 -type f,d  -ls | grep "Nov 22" > ./lastmodified.txt

#Display the content of lastmodified.txt
if [-f ~/lastmodified.txt]
then
cat $lastmodified
else
echo "Check the script."
fi
