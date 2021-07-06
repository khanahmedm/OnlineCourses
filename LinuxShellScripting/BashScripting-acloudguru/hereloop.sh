#!/bin/bash

ARRAY=(e1 e2 e3 {A..F})

while read element
do
        echo $element
        echo 'Herestrings are fun'
done <<< $(echo ${ARRAY[*]})
