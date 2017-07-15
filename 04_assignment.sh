#!/bin/bash

read -p "Enter first number: " a
read -p "Enter second number: " b
sum=$(expr "$a" + "$b")
echo "The sum is = $sum"
