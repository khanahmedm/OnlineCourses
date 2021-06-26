# Title: Create multiple files and assign permissions
# Author: Ahmed M Khan
# Date Created: 6/26/21
# Date Modified: 6/26/21
# Description : This program creates multiple files and assign execute permissions to those file for all users

#!/bin/bash

echo -n 'Please enter the number of files you want to create: '
read fnum

echo -n 'Please enter the file name that files start with: '
read fname

for i in $(seq 1 $fnum)
do
        touch ~/scripts/test/$fname.$i
done

for i in ~/scripts/test/$fname*
do
        chmod a+x $i
done
