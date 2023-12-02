#!/bin/bash

set -ex

rm -f rootcheck.txt

journalctl -S yesterday -o short-full -g root > /home/adminuser/rootcheck.txt

if [ -f ~./rootcheck.txt ]
then
echo "/home/adminuser/rootcheck.txt"
else
	journalctl -S yesterday -o short-full -g root > /home/adminuser/rootcheck.txt
fi


cat "/home/adminuser/rootcheck.txt"
