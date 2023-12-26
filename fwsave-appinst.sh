#!/usr/bin/bash

set -e

d=$(date)
iptables-save > "iptables.$d.bk"

echo "What do you want to install?
"

read app

sleep 1

sudo apt install -y $app

if [ $? == "0" ]
then 
	echo "Done"
else
	echo "App not exist."
fi

