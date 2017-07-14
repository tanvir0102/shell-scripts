#!/bin/bash
username=tanvir
echo "outside the function: $username"
func()
{
	echo "inside the function: $username"
}
func
