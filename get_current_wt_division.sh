#!/usr/bin/bash

work_time_unit_in_seconds=$1
hour_as_seconds=$((10#$(date +%H)))
minutes_as_seconds=$((10#$(date +%M)))
seconds_as_seconds=$((10#$(date +%S)))
hour_as_seconds=$(($hour_as_seconds * 3600))
minutes_as_seconds=$(($minutes_as_seconds * 60))
current_wt_division=$(($minutes_as_seconds + $hour_as_seconds + $seconds_as_seconds))
current_wt_division=$(($current_wt_division / $work_time_unit_in_seconds))
echo $current_wt_division
