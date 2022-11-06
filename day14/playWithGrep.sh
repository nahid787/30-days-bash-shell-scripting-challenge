#!/bin/bash
# Author: Morshed Hasan
# Date: Nov 4, 2022
# Modification date: Nov 4, 2022
# Description: play with grep commands. 
clear
echo
echo "###################################"
echo "##  Welcome to grep play ground  ##"
echo "##       Choose your option      ##"
echo "###################################"
echo
read -p "Enter your file path: " path
read -p "Enter pattern which are you searching: " pattern
echo "Press 'i' to ignore case for searching"
echo "Press 'w' to match a whole word"
echo "Press 'v' to display line which are not having given string"
echo "Press 'n' to display the matched line numbers"
echo "Press 'c' to display matched number of lines"
echo "Press 'r' to search under current directory and sub-directory" 
read -p "Enter your choice: " choice


case $choice in
	i)
		grep -i $pattern $path
		;;
	w)
		grep -w $pattern $path
		;;
	v)
		grep -v $pattern $path
		;;
	n)
		grep -n $pattern $path
		;;
	c)
		grep -c $pattern $path
		;;
	r)
		grep -r $pattern $path
		;;
esac


