#!/bin/bash
# Find the transpose of a matrix
echo "Enter no of rows:"
read r
echo "Enter no of columns"
read c
echo "Enter elements: "
for (( i = 0; i < `expr $r\*$c`; i++ ))
do
	read a[$i]
done

echo "Entered matrix"
for (( i = 0; i < r; i++ ))
do
	for (( j = 0; j < c; j++ ))
	do
		echo -n "${a[`epxr $c \* $i + $j`]}  "
	done
	echo
done
echo "Transposed matrix"
for (( i = 0; i < c; i++ ))
do
	for (( j = 0; j < r; j++ ))
	do
		echo -n "${a[`expr $i + $r \* $j`]}  "
	done
	echo
done
