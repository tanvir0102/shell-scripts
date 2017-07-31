#!/bin/bash
declare -a names2=('e1' 'e2' 'e3' 'e4' 'e5' 'e6')
echo -e "Original elements in an array names2: ${names2[@]} \n"
echo -e "The three elements starting from index two(e3): ${names2[@]:2:3} \n"
names2[2]='Debian'
echo -e "All the elements after replacement: ${names2[@]} \n"
names2=("${names2[@]}" "e7")
echo -e "All elements after appending e7: ${names2[@]} \n"

