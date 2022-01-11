#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="archpower-baseline"
iso_label="ARCH_$(date +%Y%m)"
iso_publisher="Arch POWER <https://archlinuxpower.org>"
iso_application="Arch POWER baseline"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
bootmodes=(openpower.grub)
arch="ppc64le"
pacman_conf="pacman.conf"
file_permissions=(
  ["/etc/shadow"]="0:0:400"
)
