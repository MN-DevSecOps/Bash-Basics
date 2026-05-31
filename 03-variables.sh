#! /bin/bash
Name=$1
Age=$2
City=$3
echo "My name is $Name, I am $Age years old and I am from $City"
# Age calculator
read -p "Enter your birth year: " BIRTH_YEAR
CURRENT_YEAR=$(TZ="Asia/Kolkata" date +"%Y")

AGE=$((CURRENT_YEAR - BIRTH_YEAR))
YEARS_LEFT=$((60 - AGE))

echo "Your current age is: $AGE years"
if [ $YEARS_LEFT -gt 0 ]; then
    echo "You will turn 60 in $YEARS_LEFT years."
else
    echo "You are already 60 or older."
fi
 

#!/bin/bash
PERSON1="Alice"
PERSON2="Bob"
echo "$PERSON1: Hey $PERSON2 ,We are going to bomb you"
echo "$PERSON2: We are going to bomb you too"
echo "$PERSON1: Hey $PERSON2 I am serious"
echo "$PERSON2: We are also serious"

echo "All variables passed to script: $@"
echo "Number of variables passed: $#"
echo "script name: $0"
echo "Who is running this: $USER"
echo "Which directory: $PWD"
echo "Home directory: $HOME"
echo "PID of the current script: $$"
sleep 5 &
echo "PID of the background command running just now: $!"
wait $!
echo "Line number: $LINENO"
RANDOM_NUMBER=$(( (RANDOM % 100) + 1 ))
echo "Random number between 1 and 100: $RANDOM_NUMBER"
echo "script executed in $SECONDS seconds"

