#!/bin/bash
# Convert all lowercase characters to uppercase in a file
if [[ $# -lt 1 ]]
then
	echo "Enter filename: "
	read filename
else
	filename=$1
fi
sed -i 's/.*/\U&/' $filename

#	-i 	flag modifies the file in-place
#	 s 	substitutes the first occurance of pattern 1 with pattern 2 i.e., syntax: s/pattern1/pattern2
#   .* 	.(dot) denotes occurance of any single character. *(asterix) denotes any number of occurance of previous character.
#		together denotes match everything. (here pattern 1)
#	\U 	Convert matches of pattern 1 to uppercase. (use \L for lowercase-pattern 2 here)
#	&/ 	Apply the pattern 2 modifier to the matched occurances of pattern 1


#------------------------------------------------------------------------------------------
#var=$(tr '[a-z]' '[A-Z]' < $filename) 	#convert lowercase to uppercase and store it in var
#echo "$var" > $filename				#output contents of var to the original file
