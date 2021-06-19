# Title: Ping multiple hosts
# Author: Ahmed M Khan
# Date Created: 6/18/21
# Date Modified: 6/18/21
# Description : This program reads a file containing ip addresses and provides ping response for them

#!/bin/bash

iplist='./ipaddr.txt'

for ip in $(cat $iplist)
do
        ping -c1 $ip &> /dev/null
        if [ $? -eq 0 ]
        then
        echo $ip OK
        else
        echo $ip NOT OK
        fi
done
