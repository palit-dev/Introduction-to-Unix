#!/bin/bash
# Script to print present month calender if c is passed else print the month for which the number is passed
# $# represents the total number of arguments passed
if [ $# -lt 1 ]		
then
	echo "Enter c to display current month else enter 1-12 to display the appropriate month: "
	read c
else
	c=$1
fi
if [ "$c" == "c" ]
then
	cal
else
	if [ $c -ge 1 -a $c -le 12 ]
	then
		cal $c $(date +'%Y')
	else
		echo "Incorrect value for month"
	fi
fi

