#!/bin/bash
# Check whether three points are collinear or not
echo "Enter point A: x1 y1 "
read x1 y1
echo "Enter point B: x2 y2 "
read x2 y2
echo "Enter point C: x3 y3 "
read x3 y3

area=$(echo "($x1-$x2)*($y2-$y3) - ($x2-$x3)*($y1-$y2)" | bc -l)
if [[ area -eq 0 ]]
then
	echo "Points are collinear"
else
	echo "Points are non-collinear"
fi
