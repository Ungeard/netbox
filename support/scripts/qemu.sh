#!/bin/sh

qemucfg="${BINARIES_DIR}/qemu.cfg"

qemucfg_generate()
{
    img=$1
    dir=""
    [ -n "$2" ] && dir="$2/"

    QEMU_ARCH=""
    case $BR2_ARCH in
	powerpc)
	    QEMU_ARCH=ppc64
	    QEMU_NIC=rtl8139
	    QEMU_SCSI=virtio-scsi-pci
	    QEMU_MACH="ppce500 -smp 2 -watchdog i6300esb -cpu e5500 -rtc clock=host"
	    ;;
	arm)
	    QEMU_ARCH=$BR2_ARCH
	    QEMU_NIC=virtio-net-pci
	    QEMU_SCSI=virtio-scsi-pci
	    if [ "$BR2_cortex_a9" = "y" ]; then
		QEMU_MACH="virt,highmem=off -watchdog i6300esb"
	    else
		QEMU_MACH="versatilepb -watchdog i6300esb -dtb ${dir}versatile-pb.dtb"
	    fi
	    ;;
	aarch64)
	    QEMU_ARCH=$BR2_ARCH
	    QEMU_NIC=virtio-net-pci
	    QEMU_SCSI=virtio-scsi-pci
	    QEMU_MACH="virt -cpu cortex-a53 -watchdog i6300esb -rtc clock=host"
	    ;;
	x86_64)
	    QEMU_ARCH=$BR2_ARCH
	    QEMU_NIC=virtio-net-pci
	    QEMU_SCSI=virtio-scsi-pci
	    QEMU_MACH="q35,accel=kvm -smp 2 -watchdog i6300esb -cpu host -enable-kvm -rtc clock=host"
	    ;;
	*)
	    ;;
    esac

    # When calling `make run`, this is all the env. that utils/qemu get
    cat <<EOF > $qemucfg
# Westermo NetBox target emulation using Qemu
NETBOX_PLAT=$NETBOX_PLAT
NETBOX_VENDOR_ID=$NETBOX_VENDOR_ID
QEMU_ARCH=$QEMU_ARCH
QEMU_MACH="$QEMU_MACH"
QEMU_NIC=$QEMU_NIC
QEMU_SCSI=$QEMU_SCSI

QEMU_KERNEL=${dir}*Image
EOF

    if [ "$BR2_TARGET_ROOTFS_SQUASHFS" = "y" ]; then
	echo "QEMU_INITRD=$img" >>$qemucfg
    elif [ "$BR2_TARGET_ROOTFS_EXT2" = "y" ]; then
	echo "QEMU_DISK=$img"   >>$qemucfg
    fi

    echo >>$qemucfg
    if [ "$BR2_PACKAGE_HOST_QEMU_SYSTEM_MODE" = "y" ]; then
	echo "QEMU_SYSTEM_PATH=$HOST_DIR/bin" >>$qemucfg
    fi
}
