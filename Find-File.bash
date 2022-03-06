#!/bin/bash
# Find a file and print its path if its exist else create a new file in the current directory
if [[ $# -lt 1 ]]
then
	echo "Enter filename: "
	read filename
else
	filename=$1
fi
var=$(find $(pwd) -name "$filename")
if [[ "$var" == "" ]]
then
	echo "File doesn't exist"
	touch $filename
	echo "New file created"
else
	echo "File path: $var"
fi
