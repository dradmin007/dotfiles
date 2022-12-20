#!/bin/bash
#
#
xset fp rehash

xset -b #disable bell

xrandr -s 1440x900

if test -f $HOME/.Xresources 
then
	xrdb -merge $HOME/.Xresources
fi

xmodmap $HOME/.Xmodmap

setxkbmap -layout "us,ru" -option "grp:caps_toggle,grp_led:scroll"

feh --bg-fill $HOME/wallpapper/wall1.jpg
dunst &

picom -b --config $HOME/.config/picom/picom.conf

xset r rate 300 50 &
unclutter & # disable mouse when idle

while :; do
	[ -f $HOME/bin/dwmbar ] && dwmbar &
	sleep 10
done &

#exec $HOME/dwm/dwm
exec icewm
