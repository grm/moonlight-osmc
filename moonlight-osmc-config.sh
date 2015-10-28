#!/bin/sh
set -e
echo "Generating configuration file..."
echo "#!/bin/sh" > /etc/moonlight-osmc/moonlight-osmc.conf
echo "Enter the desired streaming resolution (1080 or 720) [1080]:"
read READ_MOONLIGHT_RES
case $READ_MOONLIGHT_RES in
  1080)
    GEN_MOONLIGHT_RES='-1080'
    ;;
  720)
    GEN_MOONLIGHT_RES='-720'
    ;;
  *)
    GEN_MOONLIGHT_RES='-1080'
    ;;
esac
echo "MOONLIGHT_RES='$GEN_MOONLIGHT_RES'" >> /etc/moonlight-osmc/moonlight-osmc.conf
echo "Enter the IP of the streaming PC:"
read GEN_MOONLIGHT_IP
echo "MOONLIGHT_IP='$GEN_MOONLIGHT_IP'" >> /etc/moonlight-osmc/moonlight-osmc.conf
echo "Enter any additional arguments for moonlight:"
read GEN_MOONLIGHT_ARGS
echo "MOONLIGHT_ARGS='$GEN_MOONLIGHT_ARGS'" >> /etc/moonlight-osmc/moonlight-osmc.conf
chmod 755 /etc/moonlight-osmc/moonlight-osmc.conf
moonlight pair $GEN_MOONLIGHT_IP
