#!/usr/bin/bash
#
#First is to install the rename package.
#
for extension in ~/*.txt
do
	file-rename 's/\.txt$/\.text/' $extension 	
done

