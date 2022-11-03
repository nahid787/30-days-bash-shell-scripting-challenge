#!/bin/bash
# Author: Morshed Hasan
# Date: Nov 3, 2022
# Modification date: Nov 3, 2022
# Description: practacing bash shell function with parameter

subtraction() {
	num1=$1
	num2=$2
	result=$((num1-num2))
	echo "Subtraction of $num1 and $num2 is: $result"
}

read -p "Please input number1 for subtraction: " n1
read -p "Please input number2 for subtraction: " n2

subtraction $n1 $n2

	


