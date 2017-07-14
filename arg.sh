#!/bin/bash

echo "zeroth arg: $0"
echo "first arg : $1"
echo "second arg: $2"
echo "third arg : $3"

echo "twelth arg: ${12}"
echo "total arg : $#"
echo "1st $*"
echo "Args(dollar *): $*"
echo "2nd $*"
for arg in "$*"
do
echo "$arg"
done 

echo "1st $@ "
echo "Args(dollar @): $@"
for arg in "$@"
do
echo "$arg"
done
