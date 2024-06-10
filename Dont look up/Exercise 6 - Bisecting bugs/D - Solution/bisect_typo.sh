#!/bin/bash

file_path="./GitBisect/Page.html"
search_value="Secction"

# Use grep to search for the value in the file
if grep -qi "$search_value" "$file_path"; then 
    # echo "Value found"
    exit 1
else
    # echo "Value not found"
    exit 0
fi



