#!/bin/env bash

ip=$(echo -n "  $(ip route get 1 | sed -n 's/.*src \([0-9.]\+\).*/\1/p')")
notify-send -t 3000 -u normal "Local IP Address" "$(echo $ip)"
