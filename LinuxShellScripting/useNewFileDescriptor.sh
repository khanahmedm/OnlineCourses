#!/bin/bash

echo 'This is a test message' > test.txt

# open a file descriptor

exec 5<> test.txt

# read the first 4 characters from the file

read -n4 x <&5

# print first 4 letters
echo 'Printing first 4 characters'
echo $x

# exit the file descriptor
exec 5>&-
