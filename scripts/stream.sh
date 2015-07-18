# Originally written by miko
# Modified by dodslaser
. ~/.moonlight.conf
(cd ~/.moonlight && sudo moonlight pair $GAMESTREAM_IP)
(cd ~/.moonlight && sudo moonlight stream $GAMESTREAM_IP $MOONLIGHT_OPTS)