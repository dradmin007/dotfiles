#!/bin/sh
#

DIRS="$HOME/.config/herbstluftwm $HOME/.config/tint2 $HOME/bin $HOME/.local/dwm"
FILES="$HOME/.xinitrc $HOME/.Xresources"
BACKDIR=$HOME/Projects/dotfiles

#backup to ~/Projects/dotfiles
#
[ -d $BACKDIR ] || mkdir $BACKDIR

for i in $DIRS ;do 
	rsync -auizLo --exclude '*~' --exclude '*.bak' $i $BACKDIR
done

for i in $FILES ; do 
	rsync -auizL --exclude '*~' --exclude '*.bak' $i $BACKDIR
done

