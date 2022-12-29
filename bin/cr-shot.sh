#!/bin/sh


DIR="$HOME/screenshots"

[ -d $DIR ] || mkdir $DIR

scrot "$DIR/scr-$(date +%Y-%m-%d-%H_%M_%S).jpeg"
