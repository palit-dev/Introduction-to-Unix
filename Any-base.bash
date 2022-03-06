#!/bin/bash
# Perform any base to any base conversion
echo "Enter from base: "
read f_base
echo "Enter to base: "
read t_base
echo "Enter number to convert: "
read num
conv_val_todec=$(echo "ibase=$f_base; $num" | bc)
conv_val_fromdec=$(echo "obase=$t_base; $conv_val_todec" |bc)
echo "Converted value of ( $num )$f_base = ( $conv_val_fromdec )$t_base"
