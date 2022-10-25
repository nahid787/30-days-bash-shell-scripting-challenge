#!/bin/bash
# Author: Morshed Hasan
# Date: Oct 25, 2022
# Modification date: Oct 25, 2022
# Description: This script read your file line by line
#
# Method: 01

ls -l > input.txt
:'
while read line
do
	echo $line
	sleep 1
done < input.txt
'

cat input.txt | while read -r line;
do
	echo $line
	sleep 1
done
