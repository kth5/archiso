#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="archpower"
iso_label="ARCHPOWER_INSTALL_$(date +%Y%m)"
iso_publisher="ArchPOWER <https://archlinuxpower.org>"
iso_application="ArchPOWER Xenon Install CD"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('ps3_xenon.kboot')
arch="ppc"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-b' '256K' '-Xdict-size' '256K' '-mem' '128M' '-small-readers' '1' '-block-readers' '1')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/root/.bash_profile"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
)
