#!/bin/sh
#

CONFDIR=~/.config/tint2/tint2-theme-collections/minima/minima.tint2rc

# kill tint2 
kill -9 $(pidof tint2)

# start tint2

tint2 -c $CONFDIR
