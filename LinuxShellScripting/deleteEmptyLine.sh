#!/bin/bash
# This program delete empty lines

echo -n 'Enter file name: '
read fname

sed "/^$/d" $fname
