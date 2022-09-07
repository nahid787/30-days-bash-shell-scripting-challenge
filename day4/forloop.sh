#!/bin/bash
# Author: Morshed Hasan
# Date: sep 7, 2022
# Modification date: sep 7, 2022
# Description: This shell script for learning for loop.
#

for i in $(cat jobs.txt)
do
	echo The job name is $i
	sleep 2
done
