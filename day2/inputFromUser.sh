#!/bin/bash
# Author: Morshed Hasan
# Date: sep 5, 2022
# Modification date: sep 5, 2022
# Description: This shell script will read user data. 
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
echo Hi, $name
echo your profession $profession is amazing
echo $like ! Thats cool
echo

