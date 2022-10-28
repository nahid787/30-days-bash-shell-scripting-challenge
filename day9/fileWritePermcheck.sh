#!/bin/bash
# Author: Morshed Hasan
# Date: Oct 28, 2022
# Modification date: Oct 28, 2022
# Description: This script check your specific file permission
echo This is file permission checker for write
read -p "Which file do you want to check: " file
if [ -w $file ]
then
	echo "$file is writable"
else
	echo "$file is not-writable"
fi
