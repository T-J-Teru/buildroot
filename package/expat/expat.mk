################################################################################
#
# expat
#
################################################################################

EXPAT_VERSION = 2.1.0
EXPAT_SITE = http://downloads.sourceforge.net/project/expat/expat/$(EXPAT_VERSION)
EXPAT_INSTALL_STAGING = YES
EXPAT_INSTALL_STAGING_OPTS = DESTDIR=$(STAGING_DIR) installlib
EXPAT_INSTALL_TARGET_OPTS = DESTDIR=$(TARGET_DIR) installlib
EXPAT_DEPENDENCIES = host-pkgconf
EXPAT_LICENSE = MIT
EXPAT_LICENSE_FILES = COPYING

ifeq ($(BR2_TOOLCHAIN_BUILDROOT_STATIC),y)
HOST_EXPAT_CONF_OPTS = --disable-shared
endif

$(eval $(autotools-package))
$(eval $(host-autotools-package))
