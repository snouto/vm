# OpenVAS-libraries/base
# $Id$
# Description: Top-level cmake control for the base library.
#
# Authors:
# Matthew Mundell <matthew.mundell@greenbone.net>
#
# Copyright:
# Copyright (C) 2009,2010,2013 Greenbone Networks GmbH
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.

## Library


if (NOT MINGW)
  # FIXME: certain flags should be defined on the global level,
  # because they change the API (e.g. _FILE_OFFSET_BITS).
  set (CMAKE_C_FLAGS              "${CMAKE_C_FLAGS} ${HARDENING_FLAGS} -D_FILE_OFFSET_BITS=64 -Wall -fPIC")

  pkg_check_modules (ZLIB REQUIRED zlib)

  pkg_check_modules (GIO REQUIRED gio-2.0)
endif (NOT MINGW)

include_directories (${GLIB_INCLUDE_DIRS} ${ZLIB_INCLUDE_DIRS} ${GNUTLS_INCLUDE_DIRS})

if (MINGW)
  set  (FILES array.c credentials.c openvas_hosts.c cvss.c nvti.c nvticache.c
        openvas_file.c openvas_string.c pidfile.c settings.c gpgme_util.c
        pwpolicy.c osp.c ../nasl/dalton.h ../nasl/dalton.c)
  set (HEADERS array.h credentials.h openvas_hosts.h cvss.h nvti.h settings.h
       openvas_file.h openvas_string.h pidfile.h gpgme_util.h pwpolicy.h osp.h)
else (MINGW)
  set (FILES array.c credentials.c openvas_hosts.c cvss.c drop_privileges.c
       nvti.c nvticache.c openvas_compress.c openvas_file.c openvas_networking.c
       openvas_string.c pidfile.c settings.c gpgme_util.c pwpolicy.c osp.c ../nasl/dalton.h ../nasl/dalton.c)
  set (HEADERS array.h credentials.h openvas_hosts.h cvss.h drop_privileges.h
       nvticache.h nvti.h settings.h openvas_compress.h openvas_file.h osp.h
       openvas_networking.h openvas_string.h pidfile.h gpgme_util.h pwpolicy.h)
endif (MINGW)

if (BUILD_STATIC)
  add_library (openvas_base_static STATIC ${FILES} ../nasl/dalton.h ../nasl/dalton.c)
  set_target_properties (openvas_base_static PROPERTIES OUTPUT_NAME "openvas_base")
  set_target_properties (openvas_base_static PROPERTIES CLEAN_DIRECT_OUTPUT 1)
  set_target_properties (openvas_base_static PROPERTIES PUBLIC_HEADER "${HEADERS}")
endif (BUILD_STATIC)

if (BUILD_SHARED)
  add_library (openvas_base_shared SHARED ${FILES} ../nasl/dalton.h ../nasl/dalton.c)
  set_target_properties (openvas_base_shared PROPERTIES OUTPUT_NAME "openvas_base")
  set_target_properties (openvas_base_shared PROPERTIES CLEAN_DIRECT_OUTPUT 1)
  set_target_properties (openvas_base_shared PROPERTIES SOVERSION "${CPACK_PACKAGE_VERSION_MAJOR}")
  set_target_properties (openvas_base_shared PROPERTIES VERSION "${CPACK_PACKAGE_VERSION}")
  set_target_properties (openvas_base_shared PROPERTIES PUBLIC_HEADER "${HEADERS}")

  if (MINGW)
    set (GLIB_LDFLAGS -Wl,--start-group ${GLIB_LDFLAGS} gmodule-2.0 -Wl,--end-group)
    set (W32LIBS ${GLIB_LDFLAGS} intl iconv gpgme
      assuan libgpg-error ole32 ws2_32 ffi z shlwapi dnsapi winmm)
    target_link_libraries (openvas_base_shared openvas_omp_shared ${W32LIBS})
  else (MINGW)
    target_link_libraries (openvas_base_shared openvas_omp_shared ${GLIB_LDFLAGS} ${GIO_LDFLAGS} ${GNUTLS_LDFLAGS} ${ZLIB_LDFLAGS} ${GPGME_LDFLAGS})
  endif (MINGW)
endif (BUILD_SHARED)

add_definitions (-DOPENVAS_SYSCONF_DIR=\\\"${OPENVAS_SYSCONF_DIR}\\\")
add_definitions (-DOPENVAS_STATE_DIR=\\\"${OPENVAS_STATE_DIR}\\\")
if (OPENVAS_PID_DIR)
  add_definitions (-DOPENVAS_PID_DIR=\\\"${OPENVAS_PID_DIR}\\\")
endif (OPENVAS_PID_DIR)

add_custom_indent_targets (${FILES})

# Link the test-hosts executable
# TODO: This is currently only built for BUILD_SHARED
if (BUILD_SHARED)
  add_executable (test-hosts test-hosts.c)
  target_link_libraries (test-hosts openvas_base_shared ${GNUTLS_LDFLAGS} openvas_misc_shared ${GLIB_LDFLAGS})
endif (BUILD_SHARED)

## Install
if (BUILD_STATIC)
  install (TARGETS openvas_base_static
    RUNTIME DESTINATION ${BINDIR}
    ARCHIVE DESTINATION ${LIBDIR}
    PUBLIC_HEADER DESTINATION "${INCLUDEDIR}/openvas/base")
endif (BUILD_STATIC)
if (BUILD_SHARED)
  install (TARGETS openvas_base_shared
    RUNTIME DESTINATION ${BINDIR}
    LIBRARY DESTINATION ${LIBDIR}
    ARCHIVE DESTINATION ${LIBDIR}
    PUBLIC_HEADER DESTINATION "${INCLUDEDIR}/openvas/base")
endif (BUILD_SHARED)

## End
