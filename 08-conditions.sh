#!/bin/bash

NUMBER=$1

# gt - greater than
# lt - less than
# eq - equal
# ne - not equal
# ge - greater than or equal
# le - less than or equal
# % - modulus operator


#if [ $NUMBER -gt 20 ]; then     
#    echo "Given number $NUMBER is greaterthan to 20"        
#elif [ $NUMBER -eq 20 ]; then
 #   echo "Given number $NUMBER is equal to 20"
#else
 #   echo "Given number $NUMBER is less than 20"
#fi

if [$# -eq 0 ]; then
    echo "Please provide a number as an argument"
    exit 1
fi


if [ $((NUMBER % 2)) -eq 0 ]; then
    echo "Given number $NUMBER is even"
else
    echo "Given number $NUMBER is odd"
fi
