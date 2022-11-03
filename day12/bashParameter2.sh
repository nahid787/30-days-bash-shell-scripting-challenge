#!/bin/bash
# Author: Morshed Hasan
# Date: Nov 3, 2022
# Modification date: Nov 3, 2022
# Description: practacing bash shell function with parameter

read -p "Please input number1: " n1
read -p "Please input number2: " n2
echo
echo "Thank you for input your two number"
echo

echo Please choice \'a\' for addition, \'s\' for subtraction, \'m\' for multiplication, \'d\' for division:

read -p "Please input here: " choice

addition() {
        num1=$1
        num2=$2
        result=$((num1+num2))
        echo "Addition of $num1 and $num2 is: $result"
}


subtraction() {
	num1=$1
	num2=$2
	result=$((num1-num2))
	echo "Subtraction of $num1 and $num2 is: $result"
}

multiplication() {
        num1=$1
        num2=$2
        result=$((num1*num2))
        echo "Multiplication of $num1 and $num2 is: $result"
}


division() {
        num1=$1
        num2=$2
        result=$((num1 / num2))
        echo "Division of $num1 and $num2 is: $result"
}


if [[ $choice == a ]]
then
	addition $n1 $n2
elif [[ $choice == s ]]
then
	subtraction $n1 $n2
elif [[ $choice == m ]]
then
	multiplication $n1 $n2
elif [[ $choice == d ]]
then 
	division $n1 $n2
fi

	


