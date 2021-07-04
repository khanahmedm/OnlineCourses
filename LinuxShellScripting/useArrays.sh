# Title: Use of arrays
# Author: Ahmed M Khan
# Date Created: 7/03/21
# Date Modified: 7/03/21
# Description : This program shows how an array is created and its different features

#!/bin/bash

# Creating an array containing elements of different data types

NUMBERS=(1 2 3 four 5 six seven "this is eight")

# Printing array contents
echo 'Print element at index 7'
echo ${NUMBERS[7]}

echo 'Print all elements'
echo ${NUMBERS[@]}

echo 'Print array length'
echo ${#NUMBERS[@]}

echo 'Print array indexes'
echo ${!NUMBERS[@]}

echo 'Add an element 9'
NUMBERS+=(9)

echo 'Print array again'
echo ${NUMBERS[@]}

echo 'Print range of indexes'
echo ${NUMBERS[@]:2:5}
