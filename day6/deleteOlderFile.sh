#!/bin/bash
# Author: Morshed Hasan
# Date: Oct 23, 2022
# Modification date: Oct 23, 2022
# Description: This script delete old file.

#!/bin/bash
read -p "Enter your absolute folder path to delete older file: " path
echo "Your path is $path "
read -p "Enter old limit: " time
echo
echo All file will be deleted which are older than $time days from $path
sleep 3
find $path -mtime +$time -exec rm {} \;
echo DONE

