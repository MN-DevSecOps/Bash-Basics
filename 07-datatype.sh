#! /bin/bash
NUM1=10
NUM2=Linux
SUM=$((NUM1+NUM2))
echo "The sum of $NUM1 and $NUM2 is: $SUM"

#Arrary
FRUITS=("Apple" "Banana" "Cherry")
echo "First fruit: ${FRUITS[0]}"
echo "All fruits: ${FRUITS[@]}" 
echo "second fruit: ${FRUITS[1]}"
echo "third fruit: ${FRUITS[2]}"