#!/bin/bash -x

echo 'Enter a file name to read: '
read FILE

# there is type in the variable below
while read -r SUPERHER
do
        echo 'Superhero name: '$SUPERHERO
done < "$FILE"
