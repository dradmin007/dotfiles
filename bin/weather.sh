#!/bin/sh

curl -s "http://wttr.in/Moscow?0TQ&lang=ru" -o /tmp/weather.txt >/dev/null
notify-send "Weather" "$(cat /tmp/weather.txt)"
