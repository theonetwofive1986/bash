#!/bin/bash

#Create a variable to store the output of journalctl
sudologs=sudologs.txt

#Extract the system logs today and then show only those executed using sudo
#then save to sudologs.txt
journalctl -S today | grep "sudo" | tail > ./sudologs.txt

#Display the sudologs.txt
cat $sudologs 
