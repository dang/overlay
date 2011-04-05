# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit gnome2

DESCRIPTION="Glib-based client library for couchdb"
HOMEPAGE="http://git.gnome.org/cgit/couchdb-glib/"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-libs/glib:2
	>=dev-libs/json-glib-0.7.4
	net-libs/libsoup
	net-libs/libsoup-gnome
	gnome-base/gnome-keyring
	dev-libs/dbus-glib
	dev-libs/openssl"

RDEPEND="${DEPEND}"

