#!/bin/bash
# Author: Morshed Hasan
# Date: Oct 25, 2022
# Modification date: Oct 25, 2022
# Description: This script list your file by extension pattern

echo List your file by extension pattern, please input extension type!
echo
read -p "Please input extension type without '.': " ext
ls -ltr *$ext
