#!/bin/bash
# Author: Morshed Hasan
# Date: Oct 26, 2022
# Modification date: Oct 26, 2022
# Description: Practicing array and while loop in bash shell

# To declare static Array 
arr=(1 12 31 4 5)
i=0
  
# Loop upto size of array
# starting from index, i=0
while [ $i -lt ${#arr[@]} ]
do
    # To print index, ith
    # element
    echo ${arr[$i]}
      
    # Increment the i = i + 1
    i=`expr $i + 1`
    sleep 1
done
