#!/bin/bash

PASS="abc123"
read -s -p "Enter password: " mypass
if [ "$mypass" == "$PASS" ];
then
	echo -e "\nPassword accepted"
else
	echo -e "\nAccess denied"
fi
