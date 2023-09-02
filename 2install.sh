#!/bin/bash

echo "Do you want .bashrc to source: "
for file in shell/*; do
    if [ -f "$file" ]; then
        filename=`basename "$file"`
        read -p "${filename}? (Y/n): " response

        if [ -z "$response" ]; then
            response_lc="y" # empty is Yes
        else
            response_lc=$(echo "$response" | tr '[:upper:]' '[:lower:]') # case insensitive
        fi

        if [ "$response_lc" = "y" ]; then
            echo "source $(realpath "$file")" >> ~/.bashrc
        fi
    fi
done
