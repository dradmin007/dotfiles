#!/bin/sh
#
cmd=$1
vol=$2

if [ $cmd = "inc" ]; then
	pars="$vol%+"
else
	pars="$vol%-"
fi
amixer -q sset Master $pars
