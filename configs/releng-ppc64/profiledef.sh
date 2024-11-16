#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="archpower"
iso_label="ARCH_$(date +%Y%m)"
iso_publisher="ArchPOWER <https://archlinuxpower.org>"
iso_application="ArchPOWER Live/Rescue CD"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('openpower.grub' 'pmac.yaboot')
arch="ppc64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
)
