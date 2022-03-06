#!/bin/bash
# Check whether a point lies within a circle or not
if [[ $# < 3 ]]
then
	echo "Incorrect arguments supplied"
else
	x=$1
	y=$2
	r=$3
	pts=$(echo "$x ^2 + $y ^2" | bc -l)
	r2=$(echo "$r^2" | bc -l)

	if [[ $(echo "$pts < $r2" | bc -l) -eq 1 ]] 
	then
		echo "Point lies within the circle"
	elif [[ $(echo "$pts == $r2" | bc -l) -eq 1 ]] 
	then
		echo "Point lies on the circle"
	else
		echo "Point lies outside the circle"
	fi

fi
