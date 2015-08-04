# Originally written by miko
# Modified by dodslaser
. /etc/moonlight-osmc/moonlight-osmc.conf
sudo moonlight pair $GAMESTREAM_IP
sudo moonlight stream $GAMESTREAM_IP $MOONLIGHT_RES $MOONLIGHT_ARGS
