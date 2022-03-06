#!/bin/bash
# Find the max and min values from a file
file="$(pwd)/$1"
read max <"$file"
min=$max
while IFS= read line
do
	if [[ "$max" -lt "$line" ]]
	then
		max=$line
	fi
	if [[ "$min" -gt "$line" ]]
	then
		min=$line
	fi
done<"$file"
echo "max= $max"
echo "min= $min"
