#!/usr/bin/env bash
for dir in /etc; do
	echo "Files in $dir directory:"
	echo ""
	for file in $(ls -1 $dir); do
		echo $file
	done
	echo "------------------------"
done
