#!/bin/bash
# Find the maximum and minimum elements of an array
echo "Enter no of elements:"
read n
echo "Enter elements: "
for (( i = 0; i < n; i++ ))
do
	read a[$i]
done
max=${a[0]}
for (( i = 0; i < n; i++ ))
do
	if [[ $max < ${a[$i]} ]]
	then
		max=${a[$i]}
	fi
done
echo "The largest number is : $max"
while [[ condition ]]; do
	#statements
done
