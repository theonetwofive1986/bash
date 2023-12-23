#!/usr/bin/bash

set -e

figlet -w 250 Logical Volume Manage

echo "
You can create physical volume and to create and extend volume group and lovical volume here.

Select the options below.
"
PS3="

:-"

select volume in "Physical Volume" "Volume Group" "Logical Volume" "Exit"; do
	case $volume in
		"Physical Volume")
			PS3="Select
			"
			select physical in "Create" "Extend" "Main Menu"; do
				case $physical in
					"Create")
						sh -c './pvcreate.janus'
						;;
					"Extend")
						sh -c './pvextend.janus'
						;;
					"Main Menu")
						./main.sh
						;;
				esac
			done
			;;
		"Volume Group")
			select group in "Create" "Extend" "Main Menu"; do
				case $group in
					"Create")
						sh -c './vgcreate.janus'
						;;
					"Extend")
						sh -c './vgextend.janus'
						;;
					"Main Menu")
						./main.sh
						;;
				esac
			done
			;;
		"Logical Volume")
			select logical in "Create" "Extend" "Main Menu"; do
				case $logical in
					"Create")
						sh -c './lvcreate.janus'
						;;
					"Extend")
						sh -c './lvextend.janus'
						;;
					"Maine Menu")
						./main.sh
						;;
				esac
			done
			;;
		"Exit")
			exit
			;;
	esac
done

