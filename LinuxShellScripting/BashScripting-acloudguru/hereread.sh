#!/bin/bash

STRING="This is a string of words in a variable."

read -r -a Words <<< $STRING

echo "First word is ${Words[0]}"
echo "Second word is ${Words[1]}"
echo "Third word is ${Words[2]}"
echo "Fourth word is ${Words[3]}"
