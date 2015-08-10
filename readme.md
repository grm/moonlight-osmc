# Moonlight-osmc
## About
Moonlight-osmc provides a OSMC compatible .deb package of [moonlight-embedded](https://github.com/irtimmer/moonlight-embedded) as well as scripts for launching a stream from Kodi on the raspberry pi. For now the moonlight-embedded .deb is simply taken from [irtimmer's repo](http://archive.itimmer.nl/raspbian/moonlight/) and modified to run on OSMC. The scripts are originally from [this post on the OSMC forums](https://discourse.osmc.tv/t/limelight-embedded-and-osmc/1884/18) and modified to run the C rewrite of moonlight.

I created this project mainly for personal use, so updates may be a bit slow. The code might not be the prettiest, nor the most efficient, but it works for me.

## Installation

- Make sure the sound module is loaded. You can load it on boot by adding `snd-bcm2835` to `/etc/modules`
```shell
sudo modprobe snd-bcm2835
```
- Add the repo to `sources.list`
```sourceslist
deb http://repo-dodslaser.rhcloud.com/ wheezy main
```
- Add the public key for the repo
```shell
apt-key adv --keyserver keys.gnupg.net --recv 4A1C897B
```
- Install `moonlight-osmc`
```
apt-get install moonlight-osmc
```
## Usage
- `moonlight-osmc` - Pair and start the stream
- `moonlight-osmc-config` - Create `/etc/moonlight-osmc/moonlight-osmc.conf`
- Create a shortcut to `System.Exec(moonlight-osmc)` in kodi to launch from the GUI

## Features
- Presents the pairing key on screen if needed (no need for pairing via ssh)
- Restarts Kodi when stream is closed (can take some time, will look into this)
- Uses moonlight-osmc-config for configuring moonlight stream parameters

## Notes
- Irtimmer has merged my pull request for official OSMC support, but there hasn't been a new release yet. I'll keep a moddified deb for OSMC in my repo until his repo works. **You should NOT have both mine and irimmers's repos in `sources.list` at the same time for now**
- Since version 0.2.0 of moonlight-osmc, the installer places scripts in `/usr/bin` and `/etc/moonlight-osmc` rather than `/opt/moonlight-osmc` and `~/.moonlight-osmc/moonlight-osmc.conf`. The earlier versions shouldn't break anything, but it might be a good idea to clean the old files out before upgrading.

## To-do
- [ ] Controller configuration
- [ ] Kodi add-on
- [ ] Wait for the first official release of moonlight-embedded with OSMC support
