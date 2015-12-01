#!/bin/bash
WhoAmI=`whoami`
if [ "$WhoAmI" = "root" ]; then
	echo "----------------------------------------------------------"
	echo "Shaoyao-Thuoc Duoc: you have admintrator permission system"
	echo "Shaoyao-Thuoc Duoc: exporting current iptables config to $1"
	iptables-save > $1
	echo "#########################################################"
	cat $1
	echo "#########################################################"
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

