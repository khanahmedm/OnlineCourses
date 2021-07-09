#!/bin/bash -x

echo 'Enter a file name to read: '
read FILE

COUNT=1

while read -r SUPERHERO
do
        if [ $COUNT = 3 ]
        then
                echo 'Breaking the loop'
                break
        else
                (( COUNT+=1 ))
                echo 'Superhero name: '$SUPERHERO
        fi
done < "$FILE"
