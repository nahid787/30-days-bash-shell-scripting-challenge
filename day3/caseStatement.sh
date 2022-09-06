#!/bin/bash
# Author: Morshed Hasan
# Date: sep 5, 2022
# Modification date: sep 5, 2022
# Description: This is case statement script. 
clear
echo
echo please chose on of the options below
echo
echo 'a = Display Date and Time'
echo 'b = List files and directories'
echo 'c = List users logged in'
echo 'd = Check system uptime'
echo

	read choices
	case $choices in
a) date;;
b) ls;;
c) who;;
d) uptime;;
*) echo Invalid choice - Bye.
	esac
