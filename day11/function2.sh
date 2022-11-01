#!/bin/bash
# Author: Morshed Hasan
# Date: Nov 1, 2022
# Modification date: Nov 1, 2022
# Description: practacing bash shell function

function_name()
{
  a=10
  echo "Before defining local variable value of b is: $b"
  local b=20
  local i=78
  echo "After defining local variable value of b is: $b"
}

b=5
function_name

echo "The value of a variable a is: $a"
echo "The b value after calling display function: $b"
echo "The value of i is: $i
"

