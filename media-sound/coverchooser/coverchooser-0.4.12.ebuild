# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit distutils

DESCRIPTION="Cover Art Downloader"
HOMEPAGE="http://gnome-look.org/content/show.php/CoverChooser?content=117330"
SRC_URI="http://launchpad.net/coverchooser/trunk/${PV}/+download/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/imaging
	media-libs/mutagen
	dev-python/pygtk
	dev-python/pygobject
	dev-python/httplib2"
RDEPEND="${DEPEND}"

