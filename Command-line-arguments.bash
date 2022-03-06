#!/bin/bash
# Print command line arguments
for (( i = $#; i > 0; i-- )) 
do
	echo -n "${!i} "
done
echo
