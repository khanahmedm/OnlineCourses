# Title: Check if files exists
# Author: Ahmed M Khan
# Date Created: 6/26/21
# Date Modified: 6/26/21
# Description : This program check if some of the important files exist or not

#!/bin/bash

flist='/etc/passwd
/etc/group
/etc/shadow
/etc/dummy'

for file in $flist
do
        if [ ! -e $file ]
        then
                echo $file' does not exist'
        else
                echo $file' exists'
        fi
done
echo
