#!/bin/bash
# This example does not modify the file, instead it only displays on screen

echo -n 'Enter file name: '
read fname

echo -n 'Enter string to search: '
read str

echo -n 'Enter string to replace with: '
read rep

sed "s/$str/$rep/g" $fname

# Do not change the string in line 10
sed "10!s/$str/$rep/g" $fname

# Add an extra line after each line
sed G $fname
