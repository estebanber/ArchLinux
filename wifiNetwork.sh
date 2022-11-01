#! /bin/bash

list=$(ls -p /etc/netctl | grep -v /)

selected=$(echo -e "$list\nDISCONNECT" | rofi -dmenu -p 'Select Wifi')
[[ $selected = DISCONNECT ]] && sudo netctl stop-all && exit
[[ -z $selected ]] && exit
sudo netctl start $selected
