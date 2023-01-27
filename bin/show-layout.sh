#!/bin/sh
# show current Layout
#

curr=$(xset -q | grep LED | awk '{print $10}') 

[[ $curr == '00001004' ]] &&  echo "ru"
[[ $curr == '00000000' ]] &&  echo "en"
