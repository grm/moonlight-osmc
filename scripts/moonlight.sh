#!/bin/sh
# Originally written by miko
# Modified by dodslaser
sudo openvt -c 7 -s -f clear
sudo openvt -c 7 -s -f echo "Running moonlight from KODI"
# Start watchdog
sudo su osmc -c "sh /opt/moonlight/moonlight-watchdog.sh &" &
# Start stream
sudo su osmc -c "nohup openvt -c 7 -s -f sh /opt/moonlight/stream.sh >/dev/null 2>&1 &" &
sudo openvt -c 7 -s -f clear
sleep 2
# Stop mediacenter
sudo su -c "systemctl stop mediacenter &" &
exit
