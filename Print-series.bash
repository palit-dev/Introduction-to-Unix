#!/bin/sh
# Print the series: 1/1! + 2/2! + 3/3!
echo "Enter the range:"
read n
if [ $n -lt 1 ]
then
	echo "Incorrect range supplied"
else
	sum=0
	for (( i = 1; i <= $n; i++ ))
	do
		fact=1
		for (( j = 2; j <= $i; j++ ))
		do
			fact=`expr $fact \* $j`
		done
		sum=$(echo "scale=4;$sum + ($i / $fact)" | bc -l)
	done
	echo "Value of series = $sum"
fi
