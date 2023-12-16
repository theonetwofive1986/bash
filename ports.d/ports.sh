#!/usr/bin/bash

set -e

chmod 770 ./*.janus

figlet -w 250 "
well known ports"

echo "
=================================================================
=								=
=		Choose which port do you want to close.		=
=								=
=								=
=This is to close a port and halt the process associated with	=
=the port. 							=
=If the port si closed it doesn't mean it is blocked.		=
=To block a port use the firewall.				=
=								=								=
=								=
=					-theonetwofive1986-	=
=================================================================

"

PS3="
Select which port do you want to check/close.
"
select p in "20 FTP(data)" "21 FTP(control)" "22 SSH" "23 Telnet" "25 SMTP" "53 DNS" "80 HTTP" "80 HTTP3" "110 POP3" "123 NTP" "139 Netbios" "143 IMAP" "161 SNMP" "162 SNMPTRAP" "389 LDAP" "443 HTTPS" "465 SMTPS" "514 SYSLOG" "636 LDAPS" "993 IMAPS" "995 POP3S" "3306 MYSQL" "Status" "Exit" "About me"; do

PS3="

Press \"enter\" to see the options.

MAIN-MENU:>"

	case "$p" in 
		"20 FTP(data)")
			sh -c 'sudo ./20.janus'
			;;
		"21 FTP(control)")
			sh -c 'sudo ./21.janus'
			;;
		"22 SSH")
			sh -c 'sudo ./22.janus'
			;;
		"23 Telnet")
			sh -c 'sudo ./23.janus'
			;;
		"25 SMTP")
			sh -c 'sudo ./25.janus'
			;;
		"53 DNS")
			sh -c 'sudo ./53.janus'
			;;
		"80 HTTP")
			sh -c 'sudo ./80.janus'
			;;
		"80 HTTP3")
			sh -c 'sudo ./http3.janus'
			;;
		"110 POP3")
			sh -c 'sudo ./110.janus'
			;;
		"123 NTP")
			sh -c 'sudo ./123.janus'
			;;
		"139 Netbios")
			sh -c 'sudo ./139.janus'
			;;
		"143 IMAP")
			sh -c 'sudo ./143.janus'
			;;
		"161 SNMP")
			sh -c 'sudo ./161.janus'
			;;
		"162 SNMPTRAP")
			sh -c 'sudo ./162.janus'
			;;
		"389 LDAP")
			sh -c 'sudo ./389.janus'
			;;
		"443 HTTPS")
			sh -c 'sudo ./443.janus'
			;;
		"465 SMTPS")
			sh -c 'sudo ./465.janus'
			;;
		"514 SYSLOG")
			sh -c 'sudo ./514.janus'
			;;
		"636 LDAPS")
			sh -c 'sudo ./636.janus'
			;;
		"993 IMAPS")
			sh -c 'sudo ./993.janus'
			;;
		"995 POP3S")
			sh -c 'sudo ./995.janus'
			;;
		"3306 MYSQL")
			sh -c 'sudo ./3306.janus'
			;;
		"Status")
			PS3="
*		Ports Status   *

:-"
			select j in "Scan" "Exit"; do
				case "$j" in
					"Scan")
						nmap --top-ports 25 localhost
						;;
					"Exit")
						echo "
=================================================================
=								=
=		bye!						=
=								=
================================================================
"
						exit
						;;
				esac
			done
			;;
		"Exit")
			echo "
=================================================================
=								=
=		bye!						=
=								=
=								=
=								=
=================================================================
"
			exit
			;;
		"About me")
			echo "
			
			i am theonetwofive1986
			
			"
			;;
		*)
			echo "
=================================================================
=								=
=		Invalid						=
=								=
=================================================================

"
			;;
	esac
done

