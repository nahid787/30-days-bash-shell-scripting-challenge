#!/bin/bash
# Author: Morshed Hasan
# Date: Oct 22, 2022
# Modification date: Oct 22, 2022
# Description: Practicing exit code. This shell script show you file existness status

echo
echo "Enter your full file location path"
echo
read filename
ls -l $filename
if [ $? -eq 0 ]
then
	echo "File exist!"
else
	echo "File does not exist"
fi
