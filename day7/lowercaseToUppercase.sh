#!/bin/bash
# Author: Morshed Hasan
# Date: Oct 25, 2022
# Modification date: Oct 25, 2022
# Description: This script make your lowercase sentence uppercase

echo "Make your lowercase sentence into uppercase"
read -p "Enter your lower-case sentence: " lower
upper=${lower^^}
echo "Your sentence in upper-case is: $upper"

