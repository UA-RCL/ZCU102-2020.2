# Copied from https://cgit.openembedded.org/meta-openembedded/tree/meta-filesystems/recipes-filesystems/sshfs-fuse/sshfs-fuse_3.7.2.bb

SUMMARY = "This is a filesystem client based on the SSH File Transfer Protocol using FUSE"
AUTHOR = "Miklos Szeredi <miklos@szeredi.hu>"
HOMEPAGE = "https://github.com/libfuse/sshfs"
SECTION = "console/network"
LICENSE = "GPL-2.0-only"
DEPENDS = "glib-2.0 fuse3"
LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"

SRC_URI = "git://github.com/libfuse/sshfs;branch=master;protocol=https"
SRCREV = "9700b353700589dcc462205c638bcb40219a49c2"
S = "${WORKDIR}/git"

inherit meson pkgconfig
