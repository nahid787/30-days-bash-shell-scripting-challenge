#!/bin/bash
# Author: Morshed Hasan
# Date: Oct 22, 2022
# Modification date: Oct 22, 2022
# Description: This script pull your specific data from your specific file

echo
read -p "Enter your file's absolute path: " path
read -p "Enter your query [example, if you want to see all error message, enter ERROR]: " pattern
echo This is result! 
grep -i $pattern $path > $pattern.txt
echo
echo Thank You!

