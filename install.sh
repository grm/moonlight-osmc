#!/bin/sh
# Originally written by dodslaser
echo "Auto-loading snd-bcm2835..."
echo snd-bcm2835 > /etc/modules
sh sudo modprobe snd-bcm2835
echo "Copying scripts..."
mkdir /opt/moonlight-osmc
mv ./scripts/moonlight.sh /opt/moonlight-osmc/moonlight.sh
mv ./scripts/moonlight-watchdog.sh /opt/moonlight-osmc/moonlight-watchdog.sh
mv ./scripts/stream.sh /opt/moonlight-osmc/stream.sh
echo "Setting permissions..."
chmod 755 /opt/moonlight-osmc/moonlight.sh
chmod 755 /opt/moonlight-osmc/moonlight-watchdog.sh
chmod 755 /opt/moonlight-osmc/stream.sh
echo "Generating .moonlight.conf"
echo "MOONLIGHT_OPTS = '-1080 -30fps'" > ~/.moonlight/moonlight.conf
echo "Enter the IP of the PC you will be streaming from:"
read GEN_GAMESTREAM_IP
echo "GAMESTREAM_IP = $GEN_GAMESTREAM_IP" >> ~/.moonlight/moonlight.conf
chmod 755 ~/.moonlight/moonlight.conf