# Moonlight-osmc
## About
Moonlight-osmc provides a OSMC compatible .deb package of [moonlight-embedded](https://github.com/irtimmer/moonlight-embedded) as well as scripts for launching a stream from Kodi on the raspberry pi. For now the moonlight-embedded .deb is simply taken from [irtimmer's repo](http://archive.itimmer.nl/raspbian/moonlight/) and modified to run on OSMC. The scripts are originally from [this post on the OSMC forums](https://discourse.osmc.tv/t/limelight-embedded-and-osmc/1884/18) and modified to run the C rewrite of moonlight.

I created this project mainly for personal use, so updates may be a bit slow. The code might not be the prettiest, nor the most efficient, but it works for me.


## Installation
**Version 0.2.0 of moonlight-osmc places scripts in `/usr/bin` and `/etc/moonlight-osmc` rather than `/opt/moonlight-osmc` and `~/.moonlight-osmc/moonlight-osmc.conf`, and changes the debian packaging. The earlier versions shouldn't break anything, but it might be a good idea to clean everything out before upgrading.**

- Add irtimmers repo and my ppa to `/etc/apt/sources.list`

  *add these to sources.list:*
  ```sourceslist
  deb http://ppa.launchpad.net/dodslaser/moonlight-osmc/ubuntu trusty main
  deb http://archive.itimmer.nl/raspbian/moonlight wheezy main
  ```
  *Run these commands in the terminal:*
  ```shell
  sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0C457059
  sudo apt-get update
  ```
- Install the `moonlight-embedded` dependencies
```
sudo apt-get install libopus0 libexpat1 libssl1.0.0 libasound2 libudev0 libavahi-client3 libcurl3 libevdev2 libavahi-common3 libc6
```
- Install moonlight-embedded from the provided .deb
```shell
sudo dpkg -i moonlight-embedded_X.X.X-osmcX_armhf.deb
```
- Make sure the sound module is loaded. You can load it on boot by adding `snd-bcm2835` to `/etc/modules`
```shell
sudo modprobe snd-bcm2835
```
- Install `moonlight-osmc`
```
apt-get install moonlight-osmc
```
- You can reconfigure moonlight-osmc by running `moonlight-osmc-config` or editing `/etc/moonlight-osmc/moonlight-osmc.conf` directly
- Test everything by running `moonlight-osmc`
- If all goes well the pi should generate it's certificates and attempt to pair with your pc. The pairing key is visible on the pi's screen.
- You can create the following shortcut to run the script directly from Kodi.
```python
System.Exec(moonlight-osmc)
```

## Features
- Presents the pairing key on screen if needed (no need for pairing via ssh)
- Restarts Kodi when stream is closed (can take some time, will look into this)
- Uses moonlight-osmc-config for configuring moonlight stream parameters
- PPA for easy install and updates

## To-do
- [ ] Controller configuration
- [ ] Custom builds of moonlight-embedded (if irtimmer doesnt add osmc support)
- [ ] Kodi add-on
