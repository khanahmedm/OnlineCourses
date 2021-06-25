# Title: Check disk space usage
# Author: Ahmed M Khan
# Date Created: 6/24/21
# Date Modified: 6/24/21
# Description : This program checks disk space usage


#!/bin/bash

df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{print $5,$1}' | while read output
do
        usep=$(echo $output | awk '{print $1}' | cut -d'%' -f1  )
        partition=$(echo $output | awk '{print $2}' )

        if [ $usep -ge 90 ]
        then
        echo "Running out of space \"$partition ($usep%)\" on $(hostname) as on $(date)"
        fi
done
