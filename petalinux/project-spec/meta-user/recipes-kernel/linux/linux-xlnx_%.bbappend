SRC_URI += "file://bsp.cfg \
            file://devtool-fragment.cfg \
            "
KERNEL_FEATURES_append = " bsp.cfg"
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
