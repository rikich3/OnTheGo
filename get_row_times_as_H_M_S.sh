#!/usr/bin/bash
wtu=$1 #work time unit in seconds

seconds_in_a_day=86400
number_of_wtd=$(( $seconds_in_a_day / $wtu ))
# #remember the format-> HH:MM:SS
hours_buffer=0
minutes_buffer=0
seconds_buffer=0

# what does every iteration needs to output the format
# the current wt_division, nop if im gonna be adding stuff
# 
# what does every iteration needs to compute
# 

for ((i = 0; i < $number_of_wtd; i++)); do
  seconds_buffer=$(($seconds_buffer + $wtu))
  minutes_buffer=$(($minutes_buffer + $seconds_buffer / 60))
  seconds_buffer=$(($seconds_buffer % 60))
  hours_buffer=$(($hours_buffer + $minutes_buffer / 60))
  minutes_buffer=$(($minutes_buffer % 60))
  capture=$(./from_numbers_to_time_H_M_S.sh $hours_buffer $minutes_buffer $seconds_buffer)
  echo $capture
done