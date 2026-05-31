#! /bin/bash
while IFS= read -r line  

#  IFS is Internal Field Separator, it is used to split the input into fields. 
#By default, it is set to space, tab and newline. 
#By setting it to empty, we can read the entire line as a single field.
do
    echo "$line"
done < 01-hello-world.sh
