#!/bin/sh
#

# Get list upgraded 
cmd_get_updates=$(sudo apt-get update)
list_pkg=$(sudo apt-get -s dist-upgrade -q | grep -P "(Inst|Conf|Remv)")
num_of_inst=0
num_of_conf=0
num_of_remv=0

for i in $list_pkg ; do
	if [[ $i =~ Inst ]]; then 
		num_of_inst=$(( num_of_inst+=1 ))
	fi
	if [[ $i =~ Conf ]]; then 
		num_of_conf=$(( num_of_conf+=1 )) 
	fi
	if [[ $i =~ Remv ]]; then 
		num_of_remv=$(( num_of_remv+=1 )) 
	fi
done
echo "$num_of_inst/$num_of_conf/$num_of_remv" > ~/.updates
