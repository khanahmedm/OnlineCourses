#!/bin/bash -x

echo 'Enter a file name to read: '
read FILE

# there is a typo in variable name
while read -r SUPERHER
do
        echo 'Superhero name: '$SUPERHERO
done < "$FILE"
