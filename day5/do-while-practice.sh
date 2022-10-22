#!/bin/bash
# Author: Morshed Hasan
# Date: Oct 22, 2022
# Modification date: Oct 22, 2022
# Description: Testing do-while loop
count=1
while [ $count -le 5 ]
do
	echo Welcome $count times
	echo
	((count ++))
	sleep 1
done

