#!/bin/bash
# This program delete any lines that contains the string

echo -n 'Enter file name: '
read fname

echo -n 'Enter string to search: '
read str

sed "/$str/d" $fname
