#!/bin/bash
# This program delete first n number of lines

echo -n 'Enter file name: '
read fname

echo -n 'Enter number of lines you want to remove from the beginning: '
read n

lines="1,$n"'d'
#echo $lines

sed $lines $fname
