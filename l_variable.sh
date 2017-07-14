#!/bin/bash

username=tanvir
echo "outside function: $username"
func()
{
	local username=rahman
	echo "inside function: $username"
}
func
