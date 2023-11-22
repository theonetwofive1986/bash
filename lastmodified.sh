#!/bin/bash
#This script is to list the files inside /etc that has been modified then filtered using grep.
#
set -e  

lastmodified=lastmodified.txt

find /etc  -maxdepth 8 -type f,d  -ls | grep "Nov 22" > ./lastmodified.txt

if [-f ~/lastmodified.txt]
then
cat $lastmodified
fi
