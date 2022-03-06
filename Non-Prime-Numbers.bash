#!/bin/sh
# Print non-prime numbers within a given range
if [ $# -lt 2 ]
then
	echo "Insufficient arguments supplied"
else
	l_val=$1
	u_val=$2

	echo "Non-prime numbers within $l_val and $u_val: "
	for (( i = $l_val; i <= $u_val; i++ )); 
	do
		for (( j = 2; j < $i; j++ )); 
		do
			if [ `expr $i % $j` -eq 0 ]
			then
				echo $i
				break
			fi
		done
	done
fi
