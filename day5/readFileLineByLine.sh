#!/bin/bash
# Author: Morshed Hasan
# Date: Oct 22, 2022
# Modification date: Oct 22, 2022
# Description: This script reads a file line by line

#!/bin/bash
echo Enter your absolute file path
read filename
n=1
while read line 
do
	echo "Line No. $n : $line"
	n=$((n+1))
	sleep 1
done < $filename


