#!/bin/bash
# Originally written by miko
# Modified by dodslaser
sleep 60
while [ true ]; do
    VAR1="$(pgrep moonlight)"
        if [ ! "$VAR1" ]; then
            sudo -u kodi -s /bin/bash -c "sudo service kodi restart"
            sleep 1
            exit
        else
            sleep 2
fi
done
