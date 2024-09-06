#!/usr/bin/bash

var=$1

line=$(grep -n "$var" env.local | )

sed "d$line"
read setvar
echo "${var}${setvar}" >> env.local
