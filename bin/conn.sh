#!/bin/bash
#

ssid=$(nmcli -f SSID device wifi list | sed -n '1!p' | dmenu -l 0 -fn "xft:Ubunto Mono:size=12" -i | cut -d' ' -f1)
pwd=rotkam123

sudo /usr/bin/nmcli dev wifi connect $ssid password $pwd > /dev/null 2>&1
