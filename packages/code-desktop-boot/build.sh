TERMUX_PKG_HOMEPAGE="https://github.com/LukeXeon/termux-packages"
TERMUX_PKG_DESCRIPTION="code-desktop-boot"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_LICENSE_FILE="LICENSE"
TERMUX_PKG_MAINTAINER="@luke"
TERMUX_PKG_VERSION=1.0
TERMUX_PKG_DEPENDS="bash, bzip2, proot-distro, coreutils, curl, dash, diffutils, findutils, gawk, grep, gzip, procps, sed, tar, termux-exec, termux-keyring, termux-tools, util-linux, xz-utils"

termux_step_pre_configure() {
  # Source distribution does not have separate license files
  cp $TERMUX_PKG_BUILDER_DIR/LICENSE $TERMUX_PKG_SRCDIR/
}

termux_step_make_install() {
  install -Dm600 $TERMUX_PKG_BUILDER_DIR/README.md $TERMUX_PREFIX/var/$TERMUX_PKG_NAME/README.md
}
