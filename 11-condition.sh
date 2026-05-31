#! /bin/bash
# Verify the today is weekend or not
DAY=$(date +%u) # %u - day of week (1-7) 1 is Monday and 7 is Sunday

if [ $DAY -eq 1 ]; then
    echo "Today is Monday → Go to work"
elif [ $DAY -ge 2 ] && [ $DAY -le 5 ]; then
    echo "Today is a weekday (Tue–Fri) → Go to school meeting"
else
    echo "Today is weekend → Enjoy your day off"
fi
