#!/usr/bin/env bash


function return_function () {
    if [ $1 == $2 ]; then
	echo "This is return function"
	return 0 # Returns to main program
	echo "This will not appear"
    fi
}


function exit_function () {
    if [ $1 == $2 ]; then
	echo "This is exit function"
	exit 0
    fi
}

return_function 3 3
echo "We are in main program"

exit_function 3 3
echo "This line is not displayed"



