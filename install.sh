#!/bin/sh
# Originally written by dodslaser
echo "Installing dependencies..."
sudo apt-get install libopus0 libexpat1 libssl1.0.0 libasound2 libudev0 libavahi-client3 libcurl3 libevdev2 libavahi-common3 libc6
echo "Installing moonlight..."
sudo dpkg -i ./moonlight-osmc.deb
echo "Auto-loading snd-bcm2835..."
sudo echo snd-bcm2835 >> /etc/modules
sudo modprobe snd-bcm2835
echo "Copying scripts..."
sudo mkdir /opt/moonlight-osmc
sudo mv ./scripts/* /opt/moonlight-osmc/
echo "Setting permissions..."
sudo chmod -R 755 /opt/moonlight-osmc/
echo "Generating .moonlight.conf"
mkdir ~/.moonlight
echo "MOONLIGHT_OPTS = '-1080 -30fps'" > ~/.moonlight/moonlight.conf
echo "Enter the IP of the PC you will be streaming from:"
read GEN_GAMESTREAM_IP
echo "GAMESTREAM_IP = $GEN_GAMESTREAM_IP" >> ~/.moonlight/moonlight.conf
chmod 755 ~/.moonlight/moonlight.conf
