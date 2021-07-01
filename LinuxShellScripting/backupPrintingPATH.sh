#!/bin/bash

# Backup files

echo 'Creating a directory'
mkdir ~/backup

echo "Copying files"
cp /usr/bin/less* ~/backup

# print the whole PATH
echo "Printing $PATH"

# print as it is using the escape character
echo "Printing \$PATH"

# print the whole PATH
echo $PATH

# print as it is
echo 'Printing $PATH'
