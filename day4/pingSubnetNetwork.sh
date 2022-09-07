#!/bin/bash
# Author: Morshed Hasan
# Date: sep 7, 2022
# Modification date: sep 7, 2022
# Description: This script will ping all subnet networks and show you result.
#

read -p "Please enter your SUBNET" SUBNET

if [ -e $SUBNET.txt ]
then
	rm $SUBNET.txt
fi

touch $SUBNET.txt

for IP in $(seq 99 102) ###set your ip range###
do
	ping -c 1 $SUBNET.$IP >> $SUBNET.txt
done

cat  $SUBNET.txt | grep "ping statistics ---
1 packets transmitted, 1 received"
