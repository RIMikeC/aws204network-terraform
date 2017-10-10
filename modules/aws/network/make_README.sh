#!/bin/bash

if [ $# -ne 1 ] || [ ! -d $1 ]
then
   echo USAGE : $0 module
   exit 1
fi

exec 1>$1/README.md
awk 'NR > 1 {if ($0 ~ /^\#-/) exit ; else print}' $1/main.tf
echo
terraform-docs md $1

