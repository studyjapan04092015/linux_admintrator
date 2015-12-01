#!/bin/bash
WhoAmI=`whoami`
if [ "$WhoAmI" = "root" ]; then
	echo "----------------------------------------------------------"
	echo "Shaoyao-Thuoc Duoc: you have admintrator permission system"
	echo "Shaoyao-Thuoc Duoc: restoring/loading iptables config"
	echo "#####################################################"
	cat $1
	echo "#####################################################"
	iptables-restore < $1
	iptables-save > /custom_command/.current_iptables_config
	echo "#####################################################"
	cat /custom_command/.current_iptables_config
	rm /custom_command/.current_iptables_config	
	echo "#####################################################"				
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
