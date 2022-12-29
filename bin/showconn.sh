#!/bin/sh
# stas 
# descr: show connection
#
echo "$(LANG=C nmcli device status | grep -vP "(disconn|unavail|unmana)" | sed -n '1!p' | awk '{print $1 "(" $4 ")"}')"
