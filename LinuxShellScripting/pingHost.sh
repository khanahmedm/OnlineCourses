#!/bin/bash

echo 'Please provide an IP address to ping:'
read ip

ping -c1 $ip &> /dev/null
        if [ $? -eq 0 ]
        then
        echo $ip OK
        else
        echo $ip NOT OK
        fi
