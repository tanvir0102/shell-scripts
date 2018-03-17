#!/usr/bin/env bash 

function machine #Function declaration 
{ 
    # Beginning of Functin definition 
    echo -e "\nMachine information:" ; uname -a 
    echo -e "\nUsers logged on:" ; w -h 
    echo -e "\nMachine status :" ; uptime 
    echo -e "\nMemory status :" ; free 
    echo -e "\nFilesystem status :"; df -h 
    # End of Function definition 
} 

echo “Beginning of program”
machine      #Its a function call
echo “End of program”


