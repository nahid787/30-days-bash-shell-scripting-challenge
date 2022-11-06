#!/bin/bash
# Author: Morshed Hasan
# Date: Nov 6, 2022
# Modification date: Nov 6, 2022
# Description: displaying your sentence character by character

read -p "Enter your sentence: " sen
echo $sen > sentence.txt
sencount=$(wc -c sentence.txt)

echo $sencount | cut -d ' ' -f1 > sencount.txt
sencount=$(cat sencount.txt)

i=1
while [ $i -le $sencount ]
do
	cut -b $i sentence.txt
	sleep 0.3
	((i++))
done

rm sentence.txt sencount.txt &2>/dev/null


	
