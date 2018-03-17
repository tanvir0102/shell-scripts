#!/usr/bin/env bash
exec 3> output.txt
echo "Welcome to BASH learning" >&3
date >&3
echo "Hi" >&3
exec 3<&-

