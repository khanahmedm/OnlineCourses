#!/bin/bash

echo 'Please provide username:'
read username
echo

grep -q $username /etc/passwd
        if [ $? -eq 0 ]
        then
        echo 'ERROR -- user' $username 'already exists'
        echo 'Please choose a different username'
        echo
        exit
        fi

useradd $username
echo $username 'has been created'
