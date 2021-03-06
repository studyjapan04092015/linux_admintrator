#!/bin/bash
WhoAmI=`whoami`
if [ "$WhoAmI" = "root" ]; then
	echo "----------------------------------------------------------"
	echo "Shaoyao-Thuoc Duoc: you have admintrator permission system"
	echo "Shaoyao-Thuoc Duoc: reset iptables to empty"
	echo "" > /etc/iptables/iptables.rules
	systemctl restart iptables
	echo "####################################"
	systemctl status iptables
	echo "####################################" 
	echo "Shaoyao-Thuoc Duoc: done!"
	echo "-------------------------"
	exit 0
else
	echo "--------------------------------------------------------------"
	echo "Shaoyao-Thuoc Duoc: you don't have permission to change system"
	echo "Shaoyao-Thuoc Duoc: permission denied! Please run as admintrator permission!"
	echo "Shaoyao-Thuoc Duoc: error occurred!"
	exit 1
fi
