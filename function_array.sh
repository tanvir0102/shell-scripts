#!/usr/bin/env bash

array_display() {

    array=($@) # Array name as variable
    echo "Array elements are: ${array[@]}" # Displays all element of an array
    echo "Second element is: ${array[1]}" # Displays the 2nd element
}

operating_systems=(Ubuntu Fedora Redhat Suse)
array_display ${operating_systems[@]}

colors=(White green red blue)
array_display ${colors[@]}

