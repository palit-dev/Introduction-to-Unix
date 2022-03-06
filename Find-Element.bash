#!/bin/bash
# Program to search for an element in an array
echo "Enter no of elements in the array:"
read n
echo "Enter elements: "
for (( i = 0; i < n; i++ ))
do
	read a[$i]
done
echo "Enter element to search for:"
read element
pos=-1
for (( i = 0; i < n; i++ ))
do
	if [[ a[$i] -eq $element ]]
	then
		pos=$i
		break
	fi
done
if [[ $pos -ne -1 ]]
then
	echo "Element found at position $pos"
else 
	echo "Element not found"
fi
