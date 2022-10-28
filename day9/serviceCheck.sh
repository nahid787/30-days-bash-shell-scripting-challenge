#!/bin/bash
# Author: Morshed Hasan
# Date: Oct 28, 2022
# Modification date: Oct 28, 2022
# Description: This script check your service status
services=(apache2 nginx)
for srv in ${services[@]}
do
	systemctl status $srv 1>/dev/null 2>/dev/null
	if [ $? -ne 0 ]
	then
		echo
		echo "The service $srv is not running"
		echo " The service $srv is not running on $(hostname -s)"
	else
		echo
		echo "The service $srv is running"
		echo " The service $srv is running on $(hostname -s)"
	fi
done
