# Makefile.in generated automatically by automake 1.4-p6 from Makefile.am

# Copyright (C) 1994, 1995-8, 1999, 2001 Free Software Foundation, Inc.
# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.

#
# $Id: Makefile.am 1121 2006-10-27 06:11:22Z benoitg $
#


SHELL = /bin/bash

srcdir = .
top_srcdir = ..

prefix = /usr/local
exec_prefix = ${prefix}

bindir = ${exec_prefix}/bin
sbindir = ${exec_prefix}/sbin
libexecdir = ${exec_prefix}/libexec
datadir = ${prefix}/share
sysconfdir = ${prefix}/etc
sharedstatedir = ${prefix}/com
localstatedir = ${prefix}/var
libdir = ${exec_prefix}/lib
infodir = ${prefix}/share/info
mandir = ${prefix}/share/man
includedir = ${prefix}/include
oldincludedir = /usr/include

DESTDIR =

pkgdatadir = $(datadir)/wifidog
pkglibdir = $(libdir)/wifidog
pkgincludedir = $(includedir)/wifidog

top_builddir = ..

ACLOCAL = /home/pi/testing/wifidog-20090925/config/missing aclocal-1.4
AUTOCONF = /home/pi/testing/wifidog-20090925/config/missing autoconf
AUTOMAKE = /home/pi/testing/wifidog-20090925/config/missing automake-1.4
AUTOHEADER = /home/pi/testing/wifidog-20090925/config/missing autoheader

INSTALL = /usr/bin/install -c
INSTALL_PROGRAM = ${INSTALL} $(AM_INSTALL_PROGRAM_FLAGS)
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_SCRIPT = ${INSTALL}
transform = s,x,x,

NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
host_alias = 
host_triplet = armv6l-unknown-linux-gnu
AR = ar
AS = @AS@
BUILDROOT = 
CC = gcc
CXX = g++
CXXCPP = g++ -E
DLLTOOL = @DLLTOOL@
DOT = 
DOXYGEN = 
DSYMUTIL = 
ECHO = echo
EGREP = /bin/grep -E
EXEEXT = 
F77 = 
GCJ = @GCJ@
GCJFLAGS = @GCJFLAGS@
HAVE_LIB = @HAVE_LIB@
LIB = @LIB@
LIBTOOL = $(SHELL) $(top_builddir)/libtool
LN_S = ln -s
LTLIB = @LTLIB@
MAINT = #
MAKEINFO = /home/pi/testing/wifidog-20090925/config/missing makeinfo
NMEDIT = 
OBJDUMP = @OBJDUMP@
OBJEXT = o
PACKAGE = wifidog
RANLIB = ranlib
RC = @RC@
SED = /bin/sed
STRIP = strip
VERSION = 20090925
WIFIDOG_MAJOR_VERSION = 1
WIFIDOG_MICRO_VERSION = 5
WIFIDOG_MINOR_VERSION = 1
WIFIDOG_VERSION = 20090925
enable_dot = no
enable_html_docs = yes
enable_latex_docs = no

bin_PROGRAMS = wifidog 	wdctl


AM_CPPFLAGS =  	-I${top_srcdir}/libhttpd/ 	-DSYSCONFDIR='"$(sysconfdir)"' 

wifidog_LDADD = $(top_builddir)/libhttpd/libhttpd.la

wifidog_SOURCES = commandline.c 	conf.c 	debug.c 	fw_iptables.c 	firewall.c 	gateway.c 	centralserver.c 	http.c 	auth.c 	client_list.c 	util.c 	wdctl_thread.c 	ping_thread.c 	safe.c 	httpd_thread.c


noinst_HEADERS = commandline.h 	common.h 	conf.h 	debug.h 	fw_iptables.h 	firewall.h 	gateway.h 	centralserver.h 	http.h 	auth.h 	client_list.h 	util.h 	wdctl_thread.h 	wdctl.h 	ping_thread.h 	safe.h 	httpd_thread.h


wdctl_SOURCES = wdctl.c
mkinstalldirs = $(SHELL) $(top_srcdir)/config/mkinstalldirs
CONFIG_HEADER = ../config.h
CONFIG_CLEAN_FILES = 
bin_PROGRAMS =  wifidog$(EXEEXT) wdctl$(EXEEXT)
PROGRAMS =  $(bin_PROGRAMS)


DEFS = -DHAVE_CONFIG_H -I. -I$(srcdir) -I..
CPPFLAGS = 
LDFLAGS = 
LIBS = -lnsl -lpthread 
wifidog_OBJECTS =  commandline.$(OBJEXT) conf.$(OBJEXT) debug.$(OBJEXT) \
fw_iptables.$(OBJEXT) firewall.$(OBJEXT) gateway.$(OBJEXT) \
centralserver.$(OBJEXT) http.$(OBJEXT) auth.$(OBJEXT) \
client_list.$(OBJEXT) util.$(OBJEXT) wdctl_thread.$(OBJEXT) \
ping_thread.$(OBJEXT) safe.$(OBJEXT) httpd_thread.$(OBJEXT)
wifidog_DEPENDENCIES =  $(top_builddir)/libhttpd/libhttpd.la
wifidog_LDFLAGS = 
wdctl_OBJECTS =  wdctl.$(OBJEXT)
wdctl_LDADD = $(LDADD)
wdctl_DEPENDENCIES = 
wdctl_LDFLAGS = 
CFLAGS = -g -O2
COMPILE = $(CC) $(DEFS) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
LTCOMPILE = $(LIBTOOL) --mode=compile $(CC) $(DEFS) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
CCLD = $(CC)
LINK = $(LIBTOOL) --mode=link $(CCLD) $(AM_CFLAGS) $(CFLAGS) $(LDFLAGS) -o $@
HEADERS =  $(noinst_HEADERS)

DIST_COMMON =  Makefile.am Makefile.in


DISTFILES = $(DIST_COMMON) $(SOURCES) $(HEADERS) $(TEXINFOS) $(EXTRA_DIST)

TAR = tar
GZIP_ENV = --best
SOURCES = $(wifidog_SOURCES) $(wdctl_SOURCES)
OBJECTS = $(wifidog_OBJECTS) $(wdctl_OBJECTS)

all: all-redirect
.SUFFIXES:
.SUFFIXES: .S .c .lo .o .obj .s
$(srcdir)/Makefile.in: # Makefile.am $(top_srcdir)/configure.in $(ACLOCAL_M4) 
	cd $(top_srcdir) && $(AUTOMAKE) --gnu --include-deps src/Makefile

Makefile: $(srcdir)/Makefile.in  $(top_builddir)/config.status
	cd $(top_builddir) \
	  && CONFIG_FILES=$(subdir)/$@ CONFIG_HEADERS= $(SHELL) ./config.status


mostlyclean-binPROGRAMS:

clean-binPROGRAMS:
	-test -z "$(bin_PROGRAMS)" || rm -f $(bin_PROGRAMS)

distclean-binPROGRAMS:

maintainer-clean-binPROGRAMS:

install-binPROGRAMS: $(bin_PROGRAMS)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(bindir)
	@list='$(bin_PROGRAMS)'; for p in $$list; do \
	  if test -f $$p; then \
	    echo " $(LIBTOOL)  --mode=install $(INSTALL_PROGRAM) $$p $(DESTDIR)$(bindir)/`echo $$p|sed 's/$(EXEEXT)$$//'|sed '$(transform)'|sed 's/$$/$(EXEEXT)/'`"; \
	    $(LIBTOOL)  --mode=install $(INSTALL_PROGRAM) $$p $(DESTDIR)$(bindir)/`echo $$p|sed 's/$(EXEEXT)$$//'|sed '$(transform)'|sed 's/$$/$(EXEEXT)/'`; \
	  else :; fi; \
	done

uninstall-binPROGRAMS:
	@$(NORMAL_UNINSTALL)
	list='$(bin_PROGRAMS)'; for p in $$list; do \
	  rm -f $(DESTDIR)$(bindir)/`echo $$p|sed 's/$(EXEEXT)$$//'|sed '$(transform)'|sed 's/$$/$(EXEEXT)/'`; \
	done

.c.o:
	$(COMPILE) -c $<

# FIXME: We should only use cygpath when building on Windows,
# and only if it is available.
.c.obj:
	$(COMPILE) -c `cygpath -w $<`

.s.o:
	$(COMPILE) -c $<

.S.o:
	$(COMPILE) -c $<

mostlyclean-compile:
	-rm -f *.o core *.core
	-rm -f *.$(OBJEXT)

clean-compile:

distclean-compile:
	-rm -f *.tab.c

maintainer-clean-compile:

.c.lo:
	$(LIBTOOL) --mode=compile $(COMPILE) -c $<

.s.lo:
	$(LIBTOOL) --mode=compile $(COMPILE) -c $<

.S.lo:
	$(LIBTOOL) --mode=compile $(COMPILE) -c $<

mostlyclean-libtool:
	-rm -f *.lo

clean-libtool:
	-rm -rf .libs _libs

distclean-libtool:

maintainer-clean-libtool:

wifidog$(EXEEXT): $(wifidog_OBJECTS) $(wifidog_DEPENDENCIES)
	@rm -f wifidog$(EXEEXT)
	$(LINK) $(wifidog_LDFLAGS) $(wifidog_OBJECTS) $(wifidog_LDADD) $(LIBS)

wdctl$(EXEEXT): $(wdctl_OBJECTS) $(wdctl_DEPENDENCIES)
	@rm -f wdctl$(EXEEXT)
	$(LINK) $(wdctl_LDFLAGS) $(wdctl_OBJECTS) $(wdctl_LDADD) $(LIBS)

tags: TAGS

ID: $(HEADERS) $(SOURCES) $(LISP)
	list='$(SOURCES) $(HEADERS)'; \
	unique=`for i in $$list; do echo $$i; done | \
	  awk '    { files[$$0] = 1; } \
	       END { for (i in files) print i; }'`; \
	here=`pwd` && cd $(srcdir) \
	  && mkid -f$$here/ID $$unique $(LISP)

TAGS:  $(HEADERS) $(SOURCES)  $(TAGS_DEPENDENCIES) $(LISP)
	tags=; \
	here=`pwd`; \
	list='$(SOURCES) $(HEADERS)'; \
	unique=`for i in $$list; do echo $$i; done | \
	  awk '    { files[$$0] = 1; } \
	       END { for (i in files) print i; }'`; \
	test -z "$(ETAGS_ARGS)$$unique$(LISP)$$tags" \
	  || (cd $(srcdir) && etags -o $$here/TAGS $(ETAGS_ARGS) $$tags  $$unique $(LISP))

mostlyclean-tags:

clean-tags:

distclean-tags:
	-rm -f TAGS ID

maintainer-clean-tags:

distdir = $(top_builddir)/$(PACKAGE)-$(VERSION)/$(subdir)

subdir = src

distdir: $(DISTFILES)
	@for file in $(DISTFILES); do \
	  d=$(srcdir); \
	  if test -d $$d/$$file; then \
	    cp -pr $$d/$$file $(distdir)/$$file; \
	  else \
	    test -f $(distdir)/$$file \
	    || ln $$d/$$file $(distdir)/$$file 2> /dev/null \
	    || cp -p $$d/$$file $(distdir)/$$file || :; \
	  fi; \
	done
auth.o: auth.c ../libhttpd/httpd.h http.h safe.h conf.h debug.h auth.h \
	centralserver.h fw_iptables.h firewall.h client_list.h util.h
centralserver.o: centralserver.c ../libhttpd/httpd.h common.h safe.h \
	util.h auth.h conf.h debug.h centralserver.h firewall.h \
	../config.h
client_list.o: client_list.c safe.h debug.h conf.h client_list.h
commandline.o: commandline.c debug.h safe.h conf.h ../config.h
conf.o: conf.c common.h safe.h debug.h conf.h http.h ../libhttpd/httpd.h \
	auth.h firewall.h util.h
debug.o: debug.c conf.h
firewall.o: firewall.c ../libhttpd/httpd.h safe.h debug.h conf.h \
	firewall.h fw_iptables.h auth.h centralserver.h client_list.h
fw_iptables.o: fw_iptables.c common.h safe.h conf.h fw_iptables.h \
	firewall.h debug.h util.h client_list.h
gateway.o: gateway.c common.h ../libhttpd/httpd.h safe.h debug.h conf.h \
	gateway.h firewall.h commandline.h auth.h http.h client_list.h \
	wdctl_thread.h ping_thread.h httpd_thread.h util.h
http.o: http.c ../libhttpd/httpd.h safe.h debug.h conf.h auth.h \
	firewall.h http.h client_list.h common.h centralserver.h util.h \
	../config.h
httpd_thread.o: httpd_thread.c ../libhttpd/httpd.h ../config.h common.h \
	debug.h httpd_thread.h
ping_thread.o: ping_thread.c ../config.h safe.h common.h conf.h debug.h \
	ping_thread.h util.h centralserver.h auth.h ../libhttpd/httpd.h
safe.o: safe.c ../libhttpd/httpd.h safe.h debug.h
util.o: util.c common.h client_list.h safe.h util.h conf.h debug.h \
	../config.h
wdctl.o: wdctl.c wdctl.h
wdctl_thread.o: wdctl_thread.c common.h ../libhttpd/httpd.h util.h \
	conf.h debug.h auth.h centralserver.h fw_iptables.h firewall.h \
	client_list.h wdctl_thread.h gateway.h safe.h

info-am:
info: info-am
dvi-am:
dvi: dvi-am
check-am: all-am
check: check-am
installcheck-am:
installcheck: installcheck-am
install-exec-am: install-binPROGRAMS
install-exec: install-exec-am

install-data-am:
install-data: install-data-am

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am
install: install-am
uninstall-am: uninstall-binPROGRAMS
uninstall: uninstall-am
all-am: Makefile $(PROGRAMS) $(HEADERS)
all-redirect: all-am
install-strip:
	$(MAKE) $(AM_MAKEFLAGS) AM_INSTALL_PROGRAM_FLAGS=-s install
installdirs:
	$(mkinstalldirs)  $(DESTDIR)$(bindir)


mostlyclean-generic:

clean-generic:

distclean-generic:
	-rm -f Makefile $(CONFIG_CLEAN_FILES)
	-rm -f config.cache config.log stamp-h stamp-h[0-9]*

maintainer-clean-generic:
mostlyclean-am:  mostlyclean-binPROGRAMS mostlyclean-compile \
		mostlyclean-libtool mostlyclean-tags \
		mostlyclean-generic

mostlyclean: mostlyclean-am

clean-am:  clean-binPROGRAMS clean-compile clean-libtool clean-tags \
		clean-generic mostlyclean-am

clean: clean-am

distclean-am:  distclean-binPROGRAMS distclean-compile distclean-libtool \
		distclean-tags distclean-generic clean-am
	-rm -f libtool

distclean: distclean-am

maintainer-clean-am:  maintainer-clean-binPROGRAMS \
		maintainer-clean-compile maintainer-clean-libtool \
		maintainer-clean-tags maintainer-clean-generic \
		distclean-am
	@echo "This command is intended for maintainers to use;"
	@echo "it deletes files that may require special tools to rebuild."

maintainer-clean: maintainer-clean-am

.PHONY: mostlyclean-binPROGRAMS distclean-binPROGRAMS clean-binPROGRAMS \
maintainer-clean-binPROGRAMS uninstall-binPROGRAMS install-binPROGRAMS \
mostlyclean-compile distclean-compile clean-compile \
maintainer-clean-compile mostlyclean-libtool distclean-libtool \
clean-libtool maintainer-clean-libtool tags mostlyclean-tags \
distclean-tags clean-tags maintainer-clean-tags distdir info-am info \
dvi-am dvi check check-am installcheck-am installcheck install-exec-am \
install-exec install-data-am install-data install-am install \
uninstall-am uninstall all-redirect all-am all installdirs \
mostlyclean-generic distclean-generic clean-generic \
maintainer-clean-generic clean mostlyclean distclean maintainer-clean


# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
