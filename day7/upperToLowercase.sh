#!/bin/bash
# Author: Morshed Hasan
# Date: Oct 25, 2022
# Modification date: Oct 25, 2022
# Description: This script make your uppercase sentence into lowercase

echo "Make your uppercase sentence into lowercase"
read -p "Enter your Upper-case sentence: " upper
lower=${upper,,}
echo "Your sentence in lower-case is: $lower"

