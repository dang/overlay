# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-emulation/crossover-office-pro-bin/crossover-office-pro-bin-8.0.0.ebuild,v 1.1 2009/08/23 10:53:04 vapier Exp $

inherit rpm

DESCRIPTION="simplified/streamlined version of wine with commercial support"
HOMEPAGE="http://www.codeweavers.com/products/cxgames/"
SRC_URI="crossover-games-demo-${PV}-1.i386.rpm"

LICENSE="CROSSOVER"
SLOT="0"
KEYWORDS="-* amd64 x86"
IUSE="nas"
RESTRICT="fetch strip"

RDEPEND="sys-libs/glibc
	x11-libs/libXrandr
	x11-libs/libXi
	x11-libs/libXmu
	x11-libs/libXxf86dga
	x11-libs/libXxf86vm
	dev-util/desktop-file-utils
	nas? ( media-libs/nas )
	amd64? ( app-emulation/emul-linux-x86-xlibs )"

S=${WORKDIR}

pkg_nofetch() {
	einfo "Please visit ${HOMEPAGE}"
	einfo "and place ${A} in ${DISTDIR}"
}

src_install() {
	dodir /opt/cxgames
	cd "${S}/opt/cxgames"
	cp -r * "${D}"/opt/cxgames || die "cp failed"
	rm -r "${D}"/opt/cxgames/setup.{sh,data}
	insinto /opt/cxgames/etc
	doins share/crossover/data/cxgames.conf
}

pkg_postinst() {
	elog "Run /opt/cxgames/bin/cxsetup as normal user to create"
	elog "bottles and install Windows applications."
}
