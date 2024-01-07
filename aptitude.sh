#!/usr/bin/bash

set -e

sudo apt -y update && sudo apt -y upgrade

echo "
+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
Done Updating and Upgrading your Debian.
+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
"

sleep 1

sudo apt clean && sudo apt autoclean
sudo apt -y autoremove 
echo "
+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
Done Cleaning extra files.
+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
"

