#!/bin/bash

sudo chmod 770 -R /var/lib/bluetooth/
sudo chmod 770 -R /var/lib/bluetooth/F4\:8C\:50\:74\:39\:6F
sudo chmod 770 -R /var/lib/bluetooth/F4\:8C\:50\:74\:39\:6F/D8\:D1\:E1\:A8\:70*


ls -al /var/lib/bluetooth/F4\:8C\:50\:74\:39\:6F/

rm -fr /var/lib/bluetooth/F4:8C:50:74:39:6F/D8:D1:E1:A8:70*


sleep 1

sudo chmod 770 -R /var/lib/bluetooth/F4\:8C\:50\:74\:39\:6F/ && sudo chmod 770 /var/lib/bluetooth/

sudo ls -al /var/lib/bluetooth && sudo ls -al /var/lib/bluetooth/F4\:8C\:50\:74\:39\:6F/

