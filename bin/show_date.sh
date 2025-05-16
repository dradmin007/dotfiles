#!/bin/env bash

dt=$(echo -n "  " $(date "+%a %b %m %H:%M"))
notify-send -t 3000 -u normal "$dt"
