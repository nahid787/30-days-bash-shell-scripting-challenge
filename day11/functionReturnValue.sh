#!/bin/bash
# Author: Morshed Hasan
# Date: Nov 1, 2022
# Modification date: Nov 1, 2022
# Description: practacing bash shell function

fname(){
	local price=100
	echo $price
}

main_price=`fname`
echo "The main price is: $main_price"

