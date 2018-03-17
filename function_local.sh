#!/usr/bin/env bash 

say_hello () {
    
    local first_name=$1    # Local variable
    last_name=$2           # Global variable
    
    echo "Hello $first_name $middle_name $last_name"
}

middle_name="K"          #global variable

say_hello "Pratik" "Patil"

echo "My first name is: $first_name"
echo "My middle name is: $middle_name"
echo "My last name is: $last_name"
