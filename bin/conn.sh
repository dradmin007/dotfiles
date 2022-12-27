#!/bin/bash
#

ssid=$(nmcli -f SSID,RATE,BARS device wifi list | sed -n '1!p' | dmenu -l 20 | cut -d' ' -f1)
pwd=rotkam123

sudo /usr/bin/nmcli dev wifi connect $ssid password $pwd > /dev/null 2>&1