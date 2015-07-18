# Moonlight-osmc
## About
Moonlight-osmc provides a OSMC compatible .deb package as well as scripts for launching moonlight-embedded from straight from Kodi on the raspberry pi. For now the .deb is simply taken from [moonlight-embedded](https://github.com/irtimmer/moonlight-embedded) and modified to run on OSMC. The scripts are originally from [this post on the OSMC forums](https://discourse.osmc.tv/t/limelight-embedded-and-osmc/1884/18) and modified to run the C rewrite of moonlight.

I created this project mainly for personal use, so updates may be a bit slow. The code might not be the prettiest, nor the most efficient, but it works for me.

## Installation
- Add irtimmers repo to ```sources.list``` (for ```libevdev2```)
```
sudo echo 'deb http://archive.itimmer.nl/raspbian/moonlight wheezy main' >> /etc/apt/sources.list
sudo apt-get update
```
- Install ```moonlight-embedded``` from the provided .deb and all dependencies
```
sudo apt-get install libopus0 libexpat1 libssl1.0.0 libasound2 libudev0 libavahi-client3 libcurl3 libevdev2 libavahi-common3 libc6
sudo dpkg -i moonlight-embedded_x.x.x-osmc1_armhf.deb
```
- Make sure the sound module is loaded. You can load it on boot by appending ```snd-bcm2835``` to ```/etc/modules```
```
sudo modprobe snd-bcm2835
```
<<<<<<< HEAD
- Install ```moonlight-osmc```
```
sudo dpkg -i moonlight-osmc_x.x.x-x.deb
=======
- Test everything by running ```moonlight.sh```
```
/opt/moonlight-osmc/moonlight.sh
>>>>>>> fa2a8981497492c988469a86c1c168ce074af3ea
```
- You can change the streaming parameters by editing ```/home/osmc/.moonlight-osmc/moonlight-osmc.conf```

If all goes well the pi should atempt to pair with your pc. It might fail the first time you run it and then start working the second time. Not really sure why that happens, or if it still does. The pairing key is visible on the pi's screen.

You can create the folowing shortcut to run the script directly from Kodi.
```
System.Exec(/opt/moonlight-osmc/moonlight-osmc.sh)
```

## Features
- Presents the pairing key on screen if needed (no need for pairing via ssh)
- Restarts Kodi when stream is closed
- Uses moonlight-osmc.conf to edit streaming options
- Automated installer

## To-do
- [x] Use configuration file instead of editing scripts
- [x] Finish and test the automated installer
- [ ] Custom builds
- [ ] Setup a repo (PPA?) for easy install and updates
