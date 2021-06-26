# This program checks if a file exists or not based on the exit status of ls command
#!/bin/bash

ls -l ~/scripts/test/test1.txt

if [ $? -eq 0 ]
then
echo File exist
else
echo File does not exist
fi
