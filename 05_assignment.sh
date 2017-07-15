#!/bin/bash

myvar=abc
echo $myvar
/bin/bash
echo $myvar
exit
export myvar=abc
echo $myvar
/bin/bash
echo $myvar
