AC_INIT([arc-firefox-theme], [49.20160920], [https://github.com/horst3180/arc-firefox-theme/issues], [arc-firefox-theme], [https://github.com/horst3180/arc-firefox-theme])
AM_INIT_AUTOMAKE([-Wno-portability no-dist-gzip dist-xz foreign subdir-objects tar-ustar])
AC_PREFIX_DEFAULT(/usr/local)
AM_SILENT_RULES([yes])
AC_CONFIG_MACRO_DIR([m4])
AC_PROG_MKDIR_P


ARC_ENABLE([LIGHT],         [light],         [Arc Light Firefox],     [disable])
ARC_ENABLE([DARKER],        [darker],        [Arc Darker Firefox],    [disable])
ARC_ENABLE([DARK],          [dark],          [Arc Dark Firefox],      [disable])

AC_CONFIG_FILES([Makefile])
AC_OUTPUT

AC_MSG_RESULT([
        arc-firefox-theme $VERSION
        ========

        prefix:                 ${prefix}
        exec_prefix:            ${exec_prefix}
        datarootdir:            ${datarootdir}
])
