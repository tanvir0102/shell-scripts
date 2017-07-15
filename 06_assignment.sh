#!/bin/bash

declare -a arr=('sun' 'mon' 'tue' 'wed' 'thu' 'fri' 'sat')
echo -e "Total number of elements: ${#arr[@]} \n"
echo -e "Elements of array arr: ${arr[@]} \n"
echo -e "fifth element: ${arr[4]} \n"
