#!/usr/bin/env bash

# Script for check the status of the list of server, they are reachable via ping

for server in `cat serverlist.txt`
do
	ping -c 1 $server
	if test "$?" -eq "0" ; then
	echo "$server is reachable"
	else
	echo "$server is not reachable"
	fi
	echo -e "--------------------------------------\n"
done
