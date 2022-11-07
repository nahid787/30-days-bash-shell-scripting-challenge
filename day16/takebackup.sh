#!/bin/bash
# Author: Morshed Hasan
# Date: Nov 7, 2022
# Modification date: Nov 7, 2022
# Description: This script backup your folder
clear
echo
echo Welcome to backup script!
echo
read -p "Enter your source path (Absolute path): " file
read -p "Enter your destination path (Absolute path): " dest
echo
backup () {
	scp -r $file $dest
}
backup
if [ $? -eq 0 ]
then
	echo Backup successfully completed
else
	echo Backup error
fi


