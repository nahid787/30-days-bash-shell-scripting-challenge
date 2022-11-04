#!/bin/bash
# Author: Morshed Hasan
# Date: Nov 4, 2022
# Modification date: Nov 4, 2022
# Description: return value with echo

define_variables()
{
 local x=10
 echo "$x"
}


y=$(define_variables)
echo "The y value is: $y"


	


