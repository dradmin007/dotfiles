#!/bin/sh
#
left_vol=$(amixer sget 'Master' | grep 'Left' | egrep -o '[0-9]{1,3}%')
right_vol=$(amixer sget 'Master' | grep 'Right' | egrep -o '[0-9]{1,3}%')

[ $left_vol = $right_vol ] && echo "Vol: $left_vol" || echo "Vol: $left_vol/$right_vol"
