BR2_LINUX_KERNEL=y
BR2_LINUX_KERNEL_CUSTOM_VERSION=y
BR2_LINUX_KERNEL_CUSTOM_VERSION_VALUE="5.16.8"
BR2_LINUX_KERNEL_USE_CUSTOM_CONFIG=y
BR2_LINUX_KERNEL_CUSTOM_CONFIG_FILE="$(BR2_EXTERNAL_NETBOX_PATH)/board/$(NETBOX_PLAT)/linux_defconfig"
BR2_LINUX_KERNEL_INSTALL_TARGET=y

dnl Additional users and their permiossions
BR2_ROOTFS_USERS_TABLES="$(BR2_EXTERNAL_NETBOX_PATH)/board/common/users_table.txt"
BR2_ROOTFS_DEVICE_TABLE="$(BR2_EXTERNAL_NETBOX_PATH)/board/common/xattrs"

dnl OS profile requires the following extra Finit plugins, which make no sense for apps
BR2_PACKAGE_FINIT_PLUGIN_HOTPLUG=y
BR2_PACKAGE_FINIT_PLUGIN_MODULES_LOAD=y
BR2_PACKAGE_FINIT_PLUGIN_MODPROBE=y
BR2_PACKAGE_FINIT_PLUGIN_HOTPLUG=y
BR2_PACKAGE_FINIT_PLUGIN_RTC=y
BR2_PACKAGE_FINIT_PLUGIN_URANDOM=y

dnl OS profile selects the following packages
NETBOX_TYPE_OS=y
BR2_PACKAGE_BRIST=y
BR2_PACKAGE_TETRIS=y
BR2_PACKAGE_FACTORY=y
BR2_PACKAGE_DNSMASQ=y
BR2_PACKAGE_DROPBEAR=y
BR2_PACKAGE_ETHTOOL=y
BR2_PACKAGE_EVTEST=y
BR2_PACKAGE_INADYN=y
BR2_PACKAGE_IPERF=y
BR2_PACKAGE_IPROUTE2=y
BR2_PACKAGE_LIBCURL=y
BR2_PACKAGE_LIBGPIOD=y
BR2_PACKAGE_LIBGPIOD_TOOLS=y
BR2_PACKAGE_LIBNL=y
BR2_PACKAGE_LLDPD=y
BR2_PACKAGE_LM_SENSORS=y
BR2_PACKAGE_MCJOIN=y
BR2_PACKAGE_MDNSD=y
BR2_PACKAGE_MDIO_TOOLS=y
BR2_PACKAGE_MG=y
BR2_PACKAGE_MRP=y
# BR2_PACKAGE_MSTPD is not set
BR2_PACKAGE_NEMESIS=y
BR2_PACKAGE_NETCALC=y
# BR2_PACKAGE_NETSNMP_ENABLE_MIBS is not set
BR2_PACKAGE_NETSNMP_OPENSSL_INTERNAL=y
BR2_PACKAGE_NETSNMP=y
BR2_PACKAGE_NFTABLES=y
BR2_PACKAGE_QUERIERD=y
BR2_PACKAGE_SMCROUTE=y
BR2_PACKAGE_SOCAT=y
BR2_PACKAGE_SSDP_RESPONDER=y
BR2_PACKAGE_STRESS_NG=y
BR2_PACKAGE_SYSKLOGD=y
BR2_PACKAGE_SYSKLOGD_LOGGER=y
BR2_PACKAGE_TCPDUMP=y
BR2_PACKAGE_WATCHDOGD=y
BR2_PACKAGE_FRR=y
