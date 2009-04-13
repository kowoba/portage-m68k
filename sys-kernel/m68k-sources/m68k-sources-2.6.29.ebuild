# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

ETYPE="sources"

inherit git kernel-2 eutils
detect_version

RC=${PVR##*_}

KV_BASE=${KV_MAJOR}.${KV_MINOR}.${KV_PATCH}
KV_MOD=${KV_FULL##*-}
KV_MAIN="${KV_MOD}-v${KV_BASE}"
EGIT_PROJECT="linux-${KV_MOD}.git"
EGIT_REPO_URI="git://git.kernel.org/pub/scm/linux/kernel/git/geert/${EGIT_PROJECT}"
EGIT_BRANCH="${KV_MAIN}"
EGIT_TREE="${EGIT_BRANCH}"

HOMEPAGE="http://www.linux-m68k.org/"
DESCRIPTION="m68k 2.6.29 git kernel sources"

IUSE=""
KEYWORDS="~m68k"

K_NOUSENAME="yes"
K_PREPATCHED="yes"

K_EXTRAEINFO="This kernel is not supported by Gentoo due to its unstable and
experimental nature. If you have any issues, try a matching vanilla-sources
ebuild -- if the problem is not there, please contact the upstream kernel
developers at http://bugme.osdl.org and on the linux-kernel mailing list to
report the problem so it can be fixed in time for the next kernel release."

src_unpack() {
	git_src_unpack

#	cd "${EGIT_STORE_DIR}/${EGIT_PROJECT}"
#	local last_commit_abbrev=$(git log -n 1 --no-color --pretty='format:%h')
#
#	EXTRAVERSION="-${KV_MOD}.git-${last_commit_abbrev}"
#
#	S=${WORKDIR}/${EGIT_PROJECT}
#
#	cd "${S}"
#
#	unpack_set_extraversion
}

pkg_postinst() {
	postinst_sources
}

