#!/bin/sh
#

ss=$(cat<<EOFF
 \n
1 - main \n  
2 - term \n 
3 - mail \n 
4 - chat \n 
5 - dev  \n
6 - sett \n
EOFF
) 
notify-send " Herbstlufwm " "$(echo $ss)"
