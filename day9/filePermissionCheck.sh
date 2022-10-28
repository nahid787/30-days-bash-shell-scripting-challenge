#!/bin/bash
# Author: Morshed Hasan
# Date: Oct 28, 2022
# Modification date: Oct 28, 2022
# Description: This script check your specific file permission
echo This is executable file permission checker
read -p "Which file do you want to check: " file
if [[ -x $file ]]
then
	echo "$file is executable"
else
	echo "$file is not-executable"
fi
