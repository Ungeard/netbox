################################################################################
#
# freeradius-server
#
################################################################################

FREERADIUS_SERVER_VERSION = 3.0.25
FREERADIUS_SERVER_SOURCE  = freeradius-server-$(FREERADIUS_SERVER_VERSION).tar.gz
FREERADIUS_SERVER_SITE = https://github.com/FreeRADIUS/freeradius-server/releases/download/release_3_0_25
#https://github.com/FreeRADIUS/freeradius-server/releases/download/release_3_0_25/freeradius-server-3.0.25.tar.gz
FREERADIUS_SERVER_LICENSE = GNU
FREERADIUS_SERVER_LICENSE_FILES = LICENSE

$(eval $(autotools-package))
