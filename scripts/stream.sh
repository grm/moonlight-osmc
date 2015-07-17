# Originally written by miko
# Modified by dodslaser
. /home/osmc/.moonlight/moonlight.conf
sudo modprobe snd-bcm2835
sudo moonlight pair $GAMESTREAM_IP
sudo moonlight stream $MOONLIGHT_OPTS 
