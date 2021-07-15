#!/bin/bash
# This program shows all lines between starting line and ending line numbers

echo -n 'Enter file name: '
read fname

echo -n 'Enter starting line number: '
read s

echo -n 'Enter ending line number: '
read e

sed -n $s,$e'p' $fname
