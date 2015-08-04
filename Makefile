DESTDIR=/
INSTALL_LOCATION=$(DESTDIR)
all: install
install:
	cp moonlight-osmc.sh $(INSTALL_LOCATION)usr/bin/moonlight-osmc.sh
	chmod 755 $(INSTALL_LOCATION)usr/bin/moonlight-osmc.sh
	cp moonlight-osmc-config.sh $(INSTALL_LOCATION)usr/bin/moonlight-osmc-config.sh
	chmod 755 $(INSTALL_LOCATION)usr/bin/moonlight-osmc-config.sh
	mkdir $(INSTALL_LOCATION)etc/moonlight-osmc
	cp moonlight-osmc-watchdog.sh $(INSTALL_LOCATION)etc/moonlight-osmc/moonlight-osmc-watchdog.sh
	chmod 755 $(INSTALL_LOCATION)etc/moonlight-osmc/moonlight-osmc-watchdog.sh
	cp moonlight-osmc-stream.sh $(INSTALL_LOCATION)etc/moonlight-osmc/moonlight-osmc-stream.sh
	chmod 755 $(INSTALL_LOCATION)etc/moonlight-osmc/moonlight-osmc-stream.sh
uninstall:
	rm -rf $(INSTALL_LOCATION)usr/bin/moonlight-osmc.sh
	rm -rf $(INSTALL_LOCATION)usr/bin/moonlight-osmc-config.sh
	rm -rf $(INSTALL_LOCATION)etc/moonlight-osmc
