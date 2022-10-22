#!/bin/bash
# Author: Morshed Hasan
# Date: sep 7, 2022
# Modification date: sep 7, 2022
# Description: This is an example of infinit loop. [ An infinite loop is a loop that repeats indefinitely and never terminates. If the condition always evaluates to true, you get an infinite loop ]

i=0
while [ $i -le 5 ]
do
	echo This is infinite loop!
	echo "If you want to stop this loop, Press <CTRL+C> to exit."
	echo
	sleep 1
done
