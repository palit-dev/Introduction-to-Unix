#!/bin/bash
# Replace all occurences of word Unix in the file with the word passed as argument inplace.
if [[ $# -lt 1 ]]
then
	echo "Incorrect parameters supplied"
fi
sed -i '/Unix/d' ./"$1"
