#!/bin/bash
# Check if a file exists in the current directory
if [[ $# -ne 1 ]]
then
	echo "Incorrect arguments supplied"
else
	if [[ -e "$1" ]]
	then
		echo "File exits"
	else
		echo "File does not exist "
	fi
fi
