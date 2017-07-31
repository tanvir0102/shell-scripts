#!/bin/bash
read -s -p "Enter system user name: " username
if [ "$username" == "$USER" ];
then
	echo -e "\ncorrect"
else
	echo -e "\nwrong"
fi
