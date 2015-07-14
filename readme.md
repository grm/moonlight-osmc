# Moonlight-osmc
## About
**!!!WARNING!!!** I don't have access to my pi right now, but I tried to write this exactly the way I had it working. I'll test it when I get back home, but for now it might very well be broken. **!!!WARNING!!!**

Moonlight-osmc provides a OSMC compatible .deb package as well as scripts for launching moonlight-embedded from straight from Kodi on the raspberry pi. For now the .deb is simply taken from [moonlight-embedded](https://github.com/irtimmer/moonlight-embedded) and modified to run on OSMC. The scripts are originally from [this post on the OSMC forums](https://discourse.osmc.tv/t/limelight-embedded-and-osmc/1884/18) and modified to run the C rewrite of moonlight.

I created this project mainly for personal use, so updates may be a bit slow. The code might not be the prettiest, nor the most efficient, but it works for me.

## Installation
1. Add irtimmers repo to *sources.list* (for *libevdev2*)
```
sudo echo 'deb http://archive.itimmer.nl/raspbian/moonlight wheezy main' >> /etc/apt/sources.list && sudo apt-get update
```

2. Install the dependencies for moonlight-embedded.
```
sudo apt-get install libopus0 libexpat1 libssl1.0.0 libasound2 libudev0 libavahi-client3 libcurl3 libevdev2 libavahi-common3 libc6
```

3. Install *moonlight-osmc.deb*
```
sudo dpkg -i ./moonlight-osmc.deb
```

4. Move *moonlight.sh*, *moonlight-watchdog.sh* and *stream.sh* to */opt/moonlight/*
```
sudo mkdir /opt/moonlight && sudo mv ./scripts/* /opt/moonlight/
```

5. Change the IP in *stream.sh* to the IP of the address you will be streaming from. 

6. You can then create a shortcut to the *moonlight.sh* in Kodi.
```
System.Exec(/opt/moonlight/moonlight.sh)
```

## Features
- Presents the pairing key on screen if needed (no need for pairing via ssh)
- Restarts Kodi when stream is closed

## To-do
- [ ] Use configuration file instead of editing scripts
- [ ] Finish and test the automated installer
- [ ] Custom builds
- [ ] Setup a repo (PPA?) for easy install and updates