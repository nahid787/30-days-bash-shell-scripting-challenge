#!/bin/bash
# Author: Morshed Hasan
# Date: Nov 1, 2022
# Modification date: Nov 1, 2022
# Description: practacing bash shell function

function_one() {
	echo "Function one initialize"
	sleep 1
}

function_two(){
	echo "Function two initialize"
	sleep 1
}

function_three(){
	function_one
	function_two
}

function_three

