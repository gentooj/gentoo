# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{9..11} )

inherit distutils-r1

DESCRIPTION="A collection of fancy functional tools focused on practicality"
HOMEPAGE="
	https://github.com/Suor/funcy/
	https://pypi.org/project/funcy/
"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

BDEPEND="
	test? (
		dev-python/whatever[${PYTHON_USEDEP}]
	)
"

distutils_enable_tests pytest
