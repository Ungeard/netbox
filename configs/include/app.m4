# BR2_TARGET_GENERIC_REMOUNT_ROOTFS_RW is not set
# APP profile selects the following packages
BR2_PACKAGE_BUSYBOX_CONFIG_FRAGMENT_FILES="$(BR2_EXTERNAL_NETBOX_PATH)/board/app/busybox.fragment"
NETBOX_TYPE_APP=y
BR2_PACKAGE_DROPBEAR=y
BR2_PACKAGE_TCPDUMP=y
include([toolchain-bootlin-app.m4])