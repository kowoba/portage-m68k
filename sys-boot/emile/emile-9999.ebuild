# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit git base

DESCRIPTION="Macintosh m68k Bootloader"
HOMEPAGE="http://emile.sourceforge.net/"
EGIT_REPO_URI="git://gitorious.org/emile/mainline.git"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
IUSE=""
KEYWORDS="~m68k"
DEPEND="app-text/docbook-sgml-utils"

RDEPEND=""

src_unpack() {
	git_src_unpack
	ln -s emile.5 "${S}"/docs/emile.conf.5
}
