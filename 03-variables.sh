#! /bin/bash
#Name=$1
#Age=$2
#City=$3
#echo "My name is $Name, I am $Age years old and I am from $City"
#!/bin/bash

# Enter your birth year here
BIRTH_YEAR=1984

# Get the current year in IST
CURRENT_YEAR=$(TZ="Asia/Kolkata" date +"%Y")

# Calculate age
AGE=$((CURRENT_YEAR - BIRTH_YEAR))

# Calculate years left until 60
YEARS_LEFT=$((60 - AGE))

echo "Your current age is: $AGE years"
if [ $YEARS_LEFT -gt 0 ]; then
    echo "You will turn 60 in $YEARS_LEFT years."
else
    echo "You are already 60 or older."
fi




#echo "$PERSON1: Hey $PERSON2 ,We are going to bomb you"
#echo "$PERSON2: We are going to bomb you too"
#echo "$PERSON1: Hey $PERSON2 I am serious"
#echo "$PERSON2: We are also serious"