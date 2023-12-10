#!/usr/bin/bash

set -e

PS3="Network troubleshooting 
What do you want to do?(Press enter to see the choices listed above)
"
select x in "IP Details" "PING Home" "PING GW" "PING Internet" "DNS Lookup" "Trace Route" "Exit"; do
	case "$x" in
		"IP Details")
			sh -c 'nmcli'
			;;
		"PING Home")
			sh -c 'ping 127.0.0.1 -c 3'
			;;
		"PING GW")
			sh -c 'ping 1.1.1.1 -c 3'
			;;
		"PING Internet")
			sh -c 'ping 8.8.8.8 -c 3'
			;;
		"DNS Lookup")
			sh -c 'dig google.com'
			;;
		"Trace Route")
			sh -c 'traceroute -m 5 google.com'
			;;
		"Exit")
			echo "Bye"
			exit
			;;
		*)
			echo "Invalid"
		;;
	esac
done

