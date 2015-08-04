# Originally written by miko
# Modified by dodslaser
. /usr/etc/moonlight-osmc/moonlight-osmc.conf
sudo moonlight pair $GAMESTREAM_IP
sudo moonlight stream $GAMESTREAM_IP $MOONLIGHT_OPTS
