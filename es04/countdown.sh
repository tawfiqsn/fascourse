#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

# check if one argument is provided 
# ne means not equal
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <positive-integer>"
    exit 1
fi 

# check if it's a positive number
if ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "error: Input must be a positive number"
    exit 1
fi

#counter
count=$1
#counterloop
while [ "$count" -ge 0 ]; do 
    echo "$count"
    sleep 1
    ((count--))
done

exit 0