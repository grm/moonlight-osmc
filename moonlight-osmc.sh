#!/bin/sh
# Originally written by miko
# Modified by dodslaser
# Modified by grm
# Start watchdog
sudo -u kodi -s /bin/bash -c "sh /etc/moonlight-osmc/moonlight-osmc-watchdog.sh &"
# Stop mediacenter
sudo -u kodi -s /bin/bash -c "service kodi stop"
# Start stream
sudo -u kodi -s /bin/bash -c "/etc/moonlight-osmc/moonlight-osmc-stream.sh >/dev/null 2>&1"
sleep 2
exit
