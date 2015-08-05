#!/bin/bash
# Originally written by miko
# Modified by dodslaser
sleep 60
while [ true ]; do
    VAR1="$(pgrep moonlight)"
        if [ ! "$VAR1" ]; then
            sudo openvt -c 7 -s -f clear
            sudo openvt -c 7 -s -f echo "Moonlight quit... Starting KODI."
            sleep 1
            sudo openvt -c 7 -f clear
            sudo su -c "sudo systemctl restart mediacenter &" &
            sleep 1
            exit
        else
            sleep 2
fi
done
