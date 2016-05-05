EAPI="5"

WEBAPP_MANUAL_SLOT="yes"

inherit webapp eutils git-r3

DESCRIPTION="benaryorg's website on the internet"
HOMEPAGE="https://benary.org"
SRC_URI=""
EGIT_REPO_URI="git://github.com/benaryorg-deploy/benary.org.git"

SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=""

DEPEND="${RDEPEND}"

pkg_setup() {
	webapp_pkg_setup
}

src_install() {
	webapp_src_preinst

	insinto "${MY_HTDOCSDIR}"
	doins -r .

	webapp_src_install
}

pkg_postinst() {
	webapp_pkg_postinst
}

