#!/bin/bash
# Program to find the frequency of a given word in a file
if [[ $# -lt 2 ]]
then
	echo "Enter filename:"
	read filename
	echo "Enter word to search:"
	read word
else
	filename=$1
	word=$2
fi
echo -n "Frequency of $word: "
grep -cow $word $filename

# Sometimes using -c and -o together may cause problem. Under those situation use
# grep $word $filename -o -w | wc -l
