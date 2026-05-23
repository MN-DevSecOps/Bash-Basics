#! /bin/bash
echo "All the variables are: $@"
echo "number of variables are: $#"
echo "script name: $0"
echo "first variable: $1"
echo "who is running this script: $USER"
echo "home directory: $HOME"
echo "current working directory: $PWD"
echo "PID of the script: $$"
sleep 5 &
echo "script executed in $SECONDS seconds"
echo "PID of the last background process just now: $!"
wait $!
echo "Line number of the script: $LINENO"