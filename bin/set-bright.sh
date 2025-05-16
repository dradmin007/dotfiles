#!/bin/sh
#
#
cmd=${1:-up}
step="0.01"
maxlight=1
minlight="0.2"
getbrightcurr=$(xrandr --verbose | grep Brightness | sed  's/[[:space:]]//g' | cut -d':' -f2)
monitor=LVDS-1
currbright=$getbrightcurr

if [ "$getbrightcurr" = "$maxlight" ]; then
	currbright=$maxlight
elif [ "$getbrightcurr" = "$minligh" ]; then
	currbright=$minlight
else
	if [ $cmd = "up" ]; then
		currbright=$(echo "$currbright + $step" | bc -l )
	else
		currbright=$(echo "$currbright - $step" | bc -l )
	fi
fi
xrandr --output $monitor --brightness $currbright
