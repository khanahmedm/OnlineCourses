#!/bin/bash
# This program replaces tab with space

echo -n 'Enter file name: '
read fname

sed "s/\t/ /g" $fname
