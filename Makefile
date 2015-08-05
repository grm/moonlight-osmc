DESTDIR=
INSTALL_LOCATION=$(DESTDIR)
all: install
install:
	mkdir -p $(INSTALL_LOCATION)/usr/bin
	mkdir -p $(INSTALL_LOCATION)/etc/moonlight-osmc
	cp moonlight-osmc.sh $(INSTALL_LOCATION)/usr/bin/moonlight-osmc
	chmod 755 $(INSTALL_LOCATION)/usr/bin/moonlight-osmc
	cp moonlight-osmc-config.sh $(INSTALL_LOCATION)/usr/bin/moonlight-osmc-config
	chmod 755 $(INSTALL_LOCATION)/usr/bin/moonlight-osmc-config
	cp moonlight-osmc-watchdog.sh $(INSTALL_LOCATION)/etc/moonlight-osmc/moonlight-osmc-watchdog.sh
	chmod 755 $(INSTALL_LOCATION)/etc/moonlight-osmc/moonlight-osmc-watchdog.sh
	cp moonlight-osmc-stream.sh $(INSTALL_LOCATION)/etc/moonlight-osmc/moonlight-osmc-stream.sh
	chmod 755 $(INSTALL_LOCATION)/etc/moonlight-osmc/moonlight-osmc-stream.sh
clean:
	rm -rf $(INSTALL_LOCATION)/usr/bin/moonlight-osmc
	rm -rf $(INSTALL_LOCATION)/usr/bin/moonlight-osmc-config
	rm -rf $(INSTALL_LOCATION)/etc/moonlight-osmc
