#!/usr/bin/bash

var="${1}:"

line=$(grep -n "$var" env.local | cut -d: -f1)
if [[ $line != "" ]]; then
  sed -i "${line}d" env.local
fi
echo "Ingrese el valor para la variable ${var}"
read setvar
echo "${var}${setvar}" >> env.local