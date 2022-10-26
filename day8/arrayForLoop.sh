#!/bin/bash
# Author: Morshed Hasan
# Date: Oct 26, 2022
# Modification date: Oct 26, 2022
# Description: Practicing array and for loop in bash shell

# To declare static Array 
arr=(date hostname ls pwd)

  
# Loop upto size of array
# starting from index, i=0
for i in "${arr[@]}"
do
	$i
done
