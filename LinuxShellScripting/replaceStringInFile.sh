#!/bin/bash

# This example modifies the file. Use sed -i

echo -n 'Enter file name: '
read fname

echo -n 'Enter string to search: '
read str

echo -n 'Enter string to replace with: '
read rep

sed -i "s/$str/$rep/g" $fname
