#!/bin/bash
# Author: Morshed Hasan
# Date: Nov 4, 2022
# Modification date: Nov 4, 2022
# Description: practicing case in bash



	

read -p "Enter any number or characters: " any
case $any in
	[a-z])
		echo You entered lower case alph
		;;
	[A-Z])
		echo You entered upper case
		;;
	[0-9])
		echo you entered a number
		;;
esac
