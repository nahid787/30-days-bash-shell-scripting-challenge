#!/bin/bash
# Author: Morshed Hasan
# Date: Oct 23, 2022
# Modification date: Oct 23, 2022
# Description: This script backup your specific file.

echo
read -p "Enter folder or file location you want to backup: " backupfile
echo
filename=$(date +"%m_%d_%y_%H_%M")
echo 
tar czvf $filename-backup.tar.gz $backupfile

