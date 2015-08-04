DESTDIR=
INSTALL_LOCATION=$(DESTDIR)/
all: install
checkdir:
ifneq ($(INSTALL_LOCATION), /)
	mkdir $(INSTALL_LOCATION)usr
	mkdir $(INSTALL_LOCATION)usr/bin
	mkdir $(INSTALL_LOCATION)etc
endif
install: checkdir
	cp moonlight-osmc.sh $(INSTALL_LOCATION)usr/bin/moonlight-osmc
	chmod 755 $(INSTALL_LOCATION)usr/bin/moonlight-osmc
	cp moonlight-osmc-config.sh $(INSTALL_LOCATION)usr/bin/moonlight-osmc-config
	chmod 755 $(INSTALL_LOCATION)usr/bin/moonlight-osmc-config
	mkdir $(INSTALL_LOCATION)etc/moonlight-osmc
	cp moonlight-osmc-watchdog.sh $(INSTALL_LOCATION)etc/moonlight-osmc/moonlight-osmc-watchdog.sh
	chmod 755 $(INSTALL_LOCATION)etc/moonlight-osmc/moonlight-osmc-watchdog.sh
	cp moonlight-osmc-stream.sh $(INSTALL_LOCATION)etc/moonlight-osmc/moonlight-osmc-stream.sh
	chmod 755 $(INSTALL_LOCATION)etc/moonlight-osmc/moonlight-osmc-stream.sh
uninstall:
	rm -rf $(INSTALL_LOCATION)usr/bin/moonlight-osmc
	rm -rf $(INSTALL_LOCATION)usr/bin/moonlight-osmc-config
	rm -rf $(INSTALL_LOCATION)etc/moonlight-osmc
