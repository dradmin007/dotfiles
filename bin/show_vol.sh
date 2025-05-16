#!/bin/env bash

vol="$(amixer sget Master | awk -F'[][]' '/Left:/ { print $2 }')"
if [[ "$vol" != "0%" ]]; then
    v="   $vol"
else
    v="    $vol"
fi
notify-send -t 2000 -u normal "$v"
