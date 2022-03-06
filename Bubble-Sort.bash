#!/bin/bash
# Program to bubble sort an array of elements
echo "Enter no of elements in the array:"
read n
echo "Enter elements: "
for (( i = 0; i < n; i++ ))
do
	read a[$i]
done
for (( i = 0; i < n-1; i++ ))
do
	for (( j = 0; j < n-i-1; j++ ))
	do
		if [[ ${a[$j]} -gt ${a[$j+1]} ]]
		then
			temp=${a[$j]}
			a[$j]=${a[$j+1]}
			a[$j+1]=$temp
		fi
	done
done
for (( i = 0; i < n; i++ ))
do
	echo -n "${a[$i]}  "
done
