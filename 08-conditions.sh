#!/bin/bash



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

# Check if user provided a number and then check if it is even or odd
if [ $# -eq 0 ]; then
    echo "Usage: $0 <number>"
    exit 1
fi
NUMBER=$1

if [ $((NUMBER % 2)) -eq 0 ]; then
    echo "Given number $NUMBER is even"
else
    echo "Given number $NUMBER is odd"
fi

# check the number is prime or not
# Prime numbers must be greater than 1
if [ $NUMBER -le 1 ]; then
    echo "$NUMBER is NOT a prime number."
    exit 0
fi

# Flag to track primality
is_prime=1

# Loop from 2 to sqrt(NUMBER)
for (( i=2; i*i<=NUMBER; i++ ))
do
    if [ $((NUMBER % i)) -eq 0 ]; then
        is_prime=0
        break
    fi
done

# Print result
if [ $is_prime -eq 1 ]; then
    echo "$NUMBER is a PRIME number."
else
    echo "$NUMBER is NOT a prime number."
fi