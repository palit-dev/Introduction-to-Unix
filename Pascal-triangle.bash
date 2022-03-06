#!/bin/bash
# Program to print Pascal's Triangle
function nCr {
	function f 
	{
		fact=1
		num=$1
		while [[ $num -gt 1 ]]
		do
			fact=`expr $fact \* $num`
			num=`expr $num - 1`
		done
		echo $fact
	}
	n_r=`expr $1 - $2`
	echo "scale=0;$(f $1) / ( $(f $2) * $(f $n_r) )" | bc
}

echo "Enter no of lines to print:"
read n
for (( i = 0; i < n; i++ ))
do
	for (( j = n-i-1; j > 0; j-- ))
	do
		echo -n "  "
	done
	for (( j = 0; j <= i; j++ ))
	 do
		echo -n "$(nCr $i $j)   "
	done
	echo
done
