#!/bin/bash
# Check if a given name is a file or directory. If it is a file, print the no. of lines in the file
if [[ $# -lt 1 ]]
then
	echo "Enter filename: "
	read filename
else
	filename=$1
fi
if [[ -f $filename ]]
then
	echo "$filename is a file"
	echo -n "No. of lines: "
	wc -l < "$filename"
elif [[ -d "$filename" ]]
then
	echo "$filename is a directory"
else
	echo "$filename is not valid"
fi
