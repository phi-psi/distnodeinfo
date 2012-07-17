#
# Copyright (C) 2006-2012 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

# Package content copyright (C) 
#      2012 Philipp Psurek <phip@vmail.me>
#      2012 Freifunk Rheinland e. V. <http://www.freifunk-rheinland.net/>

include $(TOPDIR)/rules.mk

PKG_NAME:=ffrl-distnodeinfo
PKG_VERSION:=0.0.20120717
PKG_RELEASE:=2

include $(INCLUDE_DIR)/package.mk

define Package/ffrl-distnodeinfo
  SECTION:=base
  CATEGORY:=Utilities
  SUBMENU:=Freifunk Rheinland
  TITLE:=Distributed information service of Freifunk Rheinland nodes
#  DEPENDS:=+ffrl-hbpp
  URL:=http://www.freifunk-rheinland.net
  MAINTAINER:=Philipp Psurek <phip@vmail.me>
  DEFAULT:=n
  PKGARCH:=all
endef

define Package/ffrl-distnodeinfo/description
  Generiert und verteilt Informationen über Knoten in der Freifunkwolke und
  sendet Standortkoordinaten zu einem Kartenserver.
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ffrl-distnodeinfo/install
	$(CP) -ap files/root/* $(1)/
	mkdir -p $(1)/CONTROL
	$(INSTALL_BIN) ./ipkg/ffrl-distnodeinfo.postinst $(1)/CONTROL/postinst
	$(INSTALL_BIN) ./ipkg/ffrl-distnodeinfo.postrm $(1)/CONTROL/postrm
endef

$(eval $(call BuildPackage,ffrl-distnodeinfo))
