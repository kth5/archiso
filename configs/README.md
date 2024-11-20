mkarchiso profiles
==================

`baseline` and `releng`
-----------------------

Unmodified profiles from [upstream archiso](https://gitlab.archlinux.org/archlinux/archiso) v67.

`releng-ppc*`
-------------

Copies of the `releng` profile with changes for ArchPOWER.

Has different names, bootmodes, arch, repositories, packages, login shell, mkinitcpio compression.

Excluding package `cloud-init` (not available):

 * airootfs/etc/systemd/system/cloud-init.target.wants/cloud-config.service
 * airootfs/etc/systemd/system/cloud-init.target.wants/cloud-final.service
 * airootfs/etc/systemd/system/cloud-init.target.wants/cloud-init-local.service
 * airootfs/etc/systemd/system/cloud-init.target.wants/cloud-init.service

Excluding package `hyperv` (not available):

 * airootfs/etc/systemd/system/multi-user.target.wants/hv_fcopy_daemon.service # TODO find arch pilnux package
 * airootfs/etc/systemd/system/multi-user.target.wants/hv_kvp_daemon.service
 * airootfs/etc/systemd/system/multi-user.target.wants/hv_vss_daemon.service

Excluding package `open-vm-tools` (not available):

 * airootfs/etc/systemd/system/multi-user.target.wants/vmtoolsd.service
 * airootfs/etc/systemd/system/multi-user.target.wants/vmware-vmblock-fuse.service

Excluding package `reflector` (not available) and mirrors (expects reflector):

 * airootfs/etc/pacman.d/hooks/uncomment-mirrors.hook
 * airootfs/etc/systemd/system/multi-user.target.wants/choose-mirror.service
 * airootfs/etc/systemd/system/multi-user.target.wants/reflector.service
 * airootfs/etc/systemd/system/choose-mirror.service
 * airootfs/etc/systemd/system/reflector.service.d/archiso.conf
 * airootfs/etc/xdg/reflector/reflector.conf
 * airootfs/usr/local/bin/choose-mirror
 * /usr/local/bin/choose-mirror in file_permissions in profiledef.sh

Excluding package `syslinux` (not available):

 * memdisk in HOOKS in airootfs/etc/mkinitcpio.conf (memdiskfind not found)

Excluding package `virtualbox-guest-utils-nox` (not available):

 * airootfs/etc/systemd/system/multi-user.target.wants/vboxservice.service

Excluding package `qemu-guest-agent` (disabled or not available):

 * airootfs/etc/systemd/system/multi-user.target.wants/qemu-guest-agent.service

It should not exceed the CD ISO limit of 700 MiB.
Preferably keep it under 650 MiB so ArchPOWER stays installable with older CD-only Macs.

For NewWorld macs it's important to keep all the `hfs` packages as well as `mac-fdisk`.
`parted` cannot replicate what `mac-fdisk` does, but is important on powerpc and powerpc64 isos due to PreP support.

The `testing-any`+`testing` repos and the testing-only packages are enabled during development.
For release ISOs the are commented out.
