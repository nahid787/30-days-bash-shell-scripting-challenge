#!/bin/bash
# Author: Morshed Hasan
# Date: Oct 28, 2022
# Modification date: Oct 28, 2022
# Description: Practicing array and while loop in bash shell

# To declare static Array 
arr=(date pwd "ls -l")
i=0
  
# Loop upto size of array
# starting from index, i=0
while [ $i -lt ${#arr[@]} ]
do
    # To print index, ith
    # element
    ${arr[$i]}
      
    # Increment the i = i + 1
    i=`expr $i + 1`
    sleep 1
done
