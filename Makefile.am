ACLOCAL_AMFLAGS = -I m4
AM_CFLAGS =

EXTRA_DIST = ${top_srcdir}/README.md \
	     ${top_srcdir}/LICENSE \
	     ${top_srcdir}/make-xpi.sh \
	     ${top_srcdir}/arc-firefox-theme
NULL =

mkxpi:
	${top_srcdir}/make-xpi.sh

arc-firefox-theme-$(VERSION).xpi: mkxpi
arc-darker-firefox-theme-$(VERSION).xpi:
arc-dark-firefox-theme-$(VERSION).xpi:

BUILT_SOURCES = \
	arc-firefox-theme-$(VERSION).xpi \
	arc-darker-firefox-theme-$(VERSION).xpi \
	arc-dark-firefox-theme-$(VERSION).xpi

CLEANFILES = \
	$(BUILT_SOURCES)

extensiondir = $(libdir)/firefox/extensions
extension_DATA = \
	arc-firefox-theme-$(VERSION).xpi \
	arc-darker-firefox-theme-$(VERSION).xpi \
	arc-dark-firefox-theme-$(VERSION).xpi
