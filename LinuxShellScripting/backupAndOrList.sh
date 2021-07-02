#!/bin/bash

# Backing up files - note the use of && and ||
# && only runs if the previous command has exit status of zero; || runs if exit status has non-zero value

echo 'Creating a backup directory' && mkdir ~/backup || echo 'Directory already exists'

# Copying files

echo 'Copying files' && cp /usr/bin/lesspipe* ~/backup || echo 'Something went wrong'

echo 'Printing exit status'
echo $?

# Changing exit status to 127
exit 127

# type echo $? at command prompt to see the exit status
