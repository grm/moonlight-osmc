# Originally written by miko
# Modified by dodslaser
. ~/.moonlight.conf
sudo modprobe snd-bcm2835
sudo moonlight pair $GAMESTREAM_IP
sudo moonlight stream $GAMESTREAM_IP $MOONLIGHT_OPTS
