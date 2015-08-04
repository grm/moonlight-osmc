#!/bin/sh
echo "Generating configuration file..."
echo "#!/bin/sh" > /etc/moonlight-osmc/moonlight-osmc.conf
echo "Enter the desired streaming parameters (e.g. -1080 -30fps):"
read GEN_GAMESTREAM_OPTS
echo "MOONLIGHT_OPTS='$GEN_GAMESTREAM_OPTS'" >> /etc/moonlight-osmc/moonlight-osmc.conf
read GEN_GAMESTREAM_IP
echo "GAMESTREAM_IP='$GEN_GAMESTREAM_IP'" >> /etc/moonlight-osmc/moonlight-osmc.conf
chmod 755 /etc/moonlight-osmc/moonlight-osmc.conf
