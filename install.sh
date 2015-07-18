#!/bin/sh
# Originally written by dodslaser
echo "Installing dependencies..."
sudo apt-get install libopus0 libexpat1 libssl1.0.0 libasound2 libudev0 libavahi-client3 libcurl3 libevdev2 libavahi-common3 libc6
echo "Installing moonlight..."
sudo dpkg -i ./moonlight-osmc.deb
echo "Copying scripts..."
sudo rm -rf /opt/moonlight
sudo mkdir /opt/moonlight
sudo mv ./scripts/* /opt/moonlight/
echo "Setting permissions..."
sudo chmod -R 755 /opt/moonlight/
echo "Generating .moonlight.conf"
sudo rm -rf /home/osmc/.moonlight
mkdir /home/osmc/.moonlight
echo "#!/bin/sh" > /home/osmc/.moonlight/moonlight.conf
echo "MOONLIGHT_OPTS='-1080 -30fps'" >> /home/osmc/.moonlight/moonlight.conf
echo "Enter the IP of the PC you will be streaming from:"
read GEN_GAMESTREAM_IP
echo "GAMESTREAM_IP='$GEN_GAMESTREAM_IP'" >> /home/osmc/.moonlight/moonlight.conf
chmod 755 ~/.moonlight/moonlight.conf
