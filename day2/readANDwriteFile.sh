#!/bin/bash
# Author: Morshed Hasan
# Date: sep 5, 2022
# Modification date: sep 5, 2022
# Description: This shell script read from user, create a txt file and save user data.
#
servername=`hostname`
echo
echo Wellcome to $servername
echo
echo What is your name?
read name
echo
echo What is your profession
read profession
echo
echo what do you like to do?
read like
echo
echo what name do you like for saving your information?
read filename
echo
echo Hi, $name >> $filename.txt
echo your profession $profession is amazing >> $filename.txt
echo $like ! Thats cool >> $filename.txt
echo
echo Thank you for using this script. All your given data saved at $filename.txt
