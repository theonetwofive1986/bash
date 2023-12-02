#!/bin/bash

set -ex

rm -f rootcheck.txt

journalctl -S yesterday -o short-full -g root > ./rootcheck.txt

if [ -f ~./rootcheck.txt ]
then
echo "./rootcheck.txt"
else
	journalctl -S yesterday -o short-full -g root > ./rootcheck.txt
fi


cat "./rootcheck.txt"
