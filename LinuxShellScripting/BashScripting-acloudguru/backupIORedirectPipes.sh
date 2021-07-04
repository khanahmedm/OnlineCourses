#!/bin/bash

# Backing up files - note the use of && and ||
# && only runs if the previous command has exit status of zero; || runs if exit status has non-zero value

echo 'Creating a backup directory' && mkdir ~/backup > /dev/null || echo 'Directory already exists'

# Copying files

echo 'Copying files' && cp /usr/bin/lesspipe* ~/backup > logfile 2>&1

echo 'Copying files' && cp /usr/bin/less1* ~/backup > logfile 2>&1

grep -i no logfile | tail -n 2

echo 'Printing exit status'
echo $?

exit 127
