#!/bin/sh
# Originally written by dodslaser
echo "Installing dependencies..."
sudo apt-get install libopus0 libexpat1 libssl1.0.0 libasound2 libudev0 libavahi-client3 libcurl3 libevdev2 libavahi-common3 libc6
echo "Installing moonlight..."
sudo dpkg -i ./moonlight-osmc.deb
echo "Copying scripts..."
sudo rm -rf /opt/moonlight
sudo mkdir /opt/moonlight
sudo mv ./scripts/* /opt/moonlight-osmc/
echo "Setting permissions..."
sudo chmod -R 755 /opt/moonlight-osmc/
echo "Generating .moonlight.conf"
sudo rm -rf /home/osmc/.moonlight-osmc
mkdir /home/osmc/.moonlight-osmc
echo "#!/bin/sh" > /home/osmc/.moonlight-osmc/moonlight-osmc.conf
echo "MOONLIGHT_OPTS='-1080 -30fps'" >> /home/osmc/.moonlight-osmc/moonlight-osmc.conf
echo "Enter the IP of the PC you will be streaming from:"
read GEN_GAMESTREAM_IP
echo "GAMESTREAM_IP='$GEN_GAMESTREAM_IP'" >> /home/osmc/.moonlight-osmc/moonlight-osmc.conf
chmod 755 ~/.moonlight-osmc/moonlight-osmc.conf
