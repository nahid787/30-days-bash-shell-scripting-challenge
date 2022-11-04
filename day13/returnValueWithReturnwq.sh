#!/bin/bash
# Author: Morshed Hasan
# Date: Nov 4, 2022
# Modification date: Nov 4, 2022
# Description: return value with return command

return_variable()
{
 local a=10
 return $a
}


return_variable
b=$?
echo "value of b is: $b" 


	


