#!/bin/bash

if ! pgrep -x "tabbed" > /dev/null
then
    bash ~/.config/zathura/start_tabbed.sh
fi

zathura -e $(/bin/cat ~/.config/zathura/.tabbed_xid) "$@" &
