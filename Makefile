# Copyright © 2022 Jakub Wilk <jwilk@jwilk.net>
# SPDX-License-Identifier: MIT

PREFIX = /usr/local
DESTDIR =

.PHONY: all
all: ;

.PHONY: install
install: ipdiff
	install -d $(DESTDIR)$(PREFIX)/bin
	install -m755 $(<) $(DESTDIR)$(PREFIX)/bin/$(<)

.PHONY: clean
clean: ;

.error = GNU make is required

# vim:ts=4 sts=4 sw=4 noet
