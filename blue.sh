#!/bin/bash

sudo chmod 707 -R /var/lib/bluetooth

ls -al /var/lib/bluetooth/F4\:8C\:50\:74\:39\:6F/

for blue in /var/lib/bluetooth/F4\:8C\:50\:74\:39\:6F/D8\:D1\:E1\:A8\:70\:*
do
sudo rm "$blue/*" && sudo rmdir "$blue" 
done

sleep 1

sudo chmod 700 -R /var/lib/bluetooth/F4\:8C\:50\:74\:39\:6F/ && sudo chmod 700 /var/lib/bluetooth/

sudo ls -al /var/lib/bluetooth && sudo ls -al /var/lib/bluetooth/F4\:8C\:50\:74\:39\:6F/

