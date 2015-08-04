DESTDIR=/
INSTALL_LOCATION=$(DESTDIR)usr/local/
all: install
install:
	mv moonlight-osmc.sh $(INSTALL_LOCATION)bin/moonlight-osmc.sh
	chmod 755 $(INSTALL_LOCATION)bin/moonlight-osmc.sh
	mv moonlight-osmc-config.sh $(INSTALL_LOCATION)bin/moonlight-osmc-config.sh
	chmod 755 $(INSTALL_LOCATION)bin/moonlight-osmc-config.sh
	mkdir $(INSTALL_LOCATION)etc/moonlight-osmc
	mv moonlight-osmc-watchdog.sh $(INSTALL_LOCATION)etc/moonlight-osmc/moonlight-osmc-watchdog.sh
	chmod 755 $(INSTALL_LOCATION)etc/moonlight-osmc/moonlight-osmc-watchdog.sh
	mv moonlight-osmc-stream.sh $(INSTALL_LOCATION)etc/moonlight-osmc/moonlight-osmc-stream.sh
	chmod 755 $(INSTALL_LOCATION)etc/moonlight-osmc/moonlight-osmc-stream.sh
