#!/bin/bash
# Program to reverse the contents of a file
if [[ $# -lt 1 ]]
then
	echo "Enter filename: "
	read filename
else
	filename=$1
fi
sed -n -i '1!G;h;$p' $filename

#	-n	dont output lines
#	1!	Ignore the first line
#	G	Append buffer containing the previous line after the current line
#	h	Store the entire thing in the buffer
#	$p 	print the entire thing
