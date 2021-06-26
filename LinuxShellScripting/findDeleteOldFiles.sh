# Title: Find and delete old files
# Author: Ahmed M Khan
# Date Created: 6/25/21
# Date Modified: 6/25/21
# Description : This program finds and deletes old files

#!/bin/bash

# Create a couple of files with timestamps older than 30 days
touch -d "Thu, 1 February 2020 12:30:00" ./test/test1.file

touch -d "Thu, 1 May 2020 12:30:00" ./test/test2.file

# list files older than 30 days
find ./test -mtime +30 -exec ls -l {} \;

# Find and delete the file that is older than 60 days
find ./test -mtime +60 -exec rm {} \;

# Find and delete the file that is older than 30 days; use -delete instead of rm
find ./test -mtime +30 -delete
