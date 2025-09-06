#!/usr/bin/env bash

set -e -u -x

# Warning: customize_airootfs.sh is deprecated! Support for it will be removed in a future archiso version.

# XXX Avoid error in step "Creating a list of installed packages on live-enviroment..."
pacman-key --init
pacman-key --populate archpower
