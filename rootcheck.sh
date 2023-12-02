#!/bin/bash
#This is to show the executed command since yesterday of the root and output to a text file.

#To stop the command when error occured and show the command.
set -ex

#To get the logs of root since yesterday and send it to the text file.
journalctl -S yesterday -o short-full -g root > ./rootcheck.txt

#Display the text file.
cat "./rootcheck.txt"
