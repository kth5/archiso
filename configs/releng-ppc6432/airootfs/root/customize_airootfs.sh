#!/usr/bin/env bash
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -e -u -x

# Warning: customize_airootfs.sh is deprecated! Support for it will be removed in a future archiso version.

# XXX Avoid error in step "Creating a list of installed packages on live-enviroment..."
pacman-key --init
pacman-key --populate archpower

#sed -i 's/#\(en_US\.UTF-8\)/\1/' /etc/locale.gen
#locale-gen
