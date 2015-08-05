TMPDIR:=$(shell mktemp -d /tmp/.XXXXX)
DESTDIR=
INSTALL_LOCATION=$(DESTDIR)/
all:
	mkdir -p $(TMPDIR)/usr/bin
	mkdir -p $(TMPDIR)/etc/moonlight-osmc
	cp moonlight-osmc.sh $(TMPDIR)/usr/bin/moonlight-osmc
	chmod 755 $(TMPDIR)/usr/bin/moonlight-osmc
	cp moonlight-osmc-config.sh $(TMPDIR)/usr/bin/moonlight-osmc-config
	chmod 755 $(TMPDIR)/usr/bin/moonlight-osmc-config
	cp moonlight-osmc-watchdog.sh $(TMPDIR)/etc/moonlight-osmc/moonlight-osmc-watchdog.sh
	chmod 755 $(TMPDIR)/etc/moonlight-osmc/moonlight-osmc-watchdog.sh
	cp moonlight-osmc-stream.sh $(TMPDIR)/etc/moonlight-osmc/moonlight-osmc-stream.sh
	chmod 755 $(TMPDIR)/etc/moonlight-osmc/moonlight-osmc-stream.sh
install:
	cp -R $(TMPDIR)/* $(INSTALL _LOCATION)
clean:
	rm -rf $(TMPDIR)
