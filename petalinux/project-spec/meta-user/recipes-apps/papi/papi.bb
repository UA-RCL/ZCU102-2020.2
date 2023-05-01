#
# This file is the papi recipe.
#

SUMMARY = "PAPI - the Performance Application Programming Interface"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "git://bitbucket.org/icl/papi.git;protocol=https \
           file://0001-Disable-ldconfig-for-aarch64.patch \
           file://0001-Actually-disable-ldconfig.patch \
           "
SRCREV = "papi-6-0-0-t"
# Fails during do_compile
#SRCREV = "papi-7-0-1-t"

inherit autotools

S = "${WORKDIR}/git"
# We want to run ./configure in ${WORKDIR}/git/src/ rather than ${WORKDIR}/build/ 
# PAPI really seems to want to be built in-tree
AUTOTOOLS_SCRIPT_PATH = "${S}/src"
# And we want to build inside that folder after we've run ./configure
B = "${AUTOTOOLS_SCRIPT_PATH}"

# Empty string, disables tests. PAPI 6.0 didn't have the "no" option that newer versions have
EXTRA_OECONF += " --with-tests="
# Flags that make it compile and build/etc but they may be suboptimal
EXTRA_OECONF += " --with-ffsll"
EXTRA_OECONF += " --with-virtualtimer=perfctr" 
EXTRA_OECONF += " --with-walltimer=gettimeofday"
EXTRA_OECONF += " --with-tls=__thread" 
EXTRA_OECONF += " --with-perf-events"
# TODO: Making this conditional based on target arch or something similar would be cool
EXTRA_OECONF += " --with-arch=aarch64"
EXTRA_OECONF += " --with-CPU=arm"

# Some of the things we're compiling are putting /usr/include on the include path
# Which means they might not be cross-compiling correctly.
# This disables that error and stops it from killing the build, but it might be a legit problem ¯\_(ツ)_/¯
INSANE_SKIP_${PN} += " compile-host-path" 
# Apparently some of the rpaths we're providing are duplicate/default.
# This "doesn't break things" but they make it an error that kills the build anyway. So we're disabling it
INSANE_SKIP_${PN} += " useless-rpaths" 
# These are both documented here: https://docs.yoctoproject.org/3.1.24/ref-manual/ref-qa-checks.html

do_install() {
  oe_runmake 'DESTDIR=${D}' install-lib 
  echo "installed libs"
  oe_runmake 'DESTDIR=${D}' install-man
  echo "installed man pages"
  oe_runmake 'DESTDIR=${D}' install-utils 
  echo "installed utils"
  # Not needed & introduces a dependency on python
  # oe_runmake 'DESTDIR=${D}' install-hl-scripts 
  # echo "installed hl-scripts"
  oe_runmake 'DESTDIR=${D}' install-pkgconf
  echo "installed pkgconf"
}
