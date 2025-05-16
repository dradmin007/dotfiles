#!/bin/env bash


w=$(echo -n $(curl -s https://wttr.in/?format=%c%t))
notify-send -t 3000 -u normal "$w"
