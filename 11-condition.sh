#! /bin/bash
# Verify the today is weekend or not
DAY=$(date +%u) # %u - day of week (1-7) 1 is Monday and 7 is Sunday
if [ $DAY -eq 6 ] || [ $DAY -eq 7 ]; then
    echo "Today is weekend & Enkoy your day off"
else
    echo "Today is weekday & Time to work"
fi  
