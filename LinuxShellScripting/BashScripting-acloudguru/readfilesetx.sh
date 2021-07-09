#!/bin/bash -x

echo 'Enter a file name to read: '
read FILE

while read -r SUPERHERO
do
        set -x
        echo 'Superhero name: '$SUPERHERO
        set +x
done < "$FILE"
