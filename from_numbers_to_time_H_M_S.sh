#!/usr/bin/bash

hours=$1
minutes=$2
seconds=$3

if [[ $hours -lt 10 ]]; then
  hours="0$hours"
fi
if [[ $minutes -lt 10 ]]; then
  minutes="0$minutes"
fi
if [[ $seconds -lt 10 ]]; then
  seconds="0$seconds"
fi

echo "${hours}:${minutes}:${seconds}"