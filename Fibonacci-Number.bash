#!/bin/bash
# Write a program to print fibonacci element
fib()
{

	if (( $1 <= 1 ))
 	then 
 		echo 0
	elif (( $1 == 2 ))
 	then 
 		echo 1
	else
 	 echo $(( $(fib $(($1 - 1)) ) + $(fib $(($1- 2)) ) )) 
	fi
}

echo "Enter the index of the term: "
read n
echo "The ($n)th term is: "
fib $n

