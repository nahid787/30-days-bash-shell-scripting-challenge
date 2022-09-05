#!/bin/bash
# Author: Morshed Hasan
# Date: sep 5, 2022
# Modification date: sep 5, 2022
# Description: This shell script will check file exist or not, if not exist shell script will create a new file. 
#
clear
echo please give me absolute path of your file.
read path
if [ -e $path ]
then
	echo file exist! Bye
else
	echo The file is not exist. but don\'t worry system has created your file $path 
	touch $path
fi
