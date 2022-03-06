#!/bin/bash
# Program to check if string length is more than 10 or not
 
echo "Enter a string:"
read mystring
var=`expr length "${mystring}"`
if [[ $var -lt 10 ]]
then
	echo "String length less than 10"
else
	echo "String size okay. Length: $var"
fi
