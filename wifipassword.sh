#!/bin/bash
#This is to get the ssid and password of your saved Network in your laptop/computer.

#"e" To stop the script when an error occured.
#"x" To display the command during execution.
#"v" To display the input command.
set -evx

#To remove the ssid.txt from your current directory if existing.
#To enable this command remove the "#"
#rm -f ./ssid.txt

#To get the ssid and password from each network files in /etc/NetworkManager/system-connecitons/
for file in /etc/netplan/*
do
  cat $file | grep "name" >> ssid.txt;
  cat $file | grep "password" >> ssid.txt;
done

#NOTE: after updating my ubuntu to version 23.10 the files inside /etc/NetworkManager/system-connecions/ are no longer exist.
#Maybe it was part of the update.
