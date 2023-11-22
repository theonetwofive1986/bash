#!/bin/bash
set -e
top=top.txt

top -b -n 1 > ./top.txt

if [ -f ~/top.txt ]
then
cat $top
fi
