#!/bin/bash -e

# TODO: expecting this to not be needed, hoping to remove whole vnc
on_chroot <<- EOF
	SUDO_USER="${FIRST_USER_NAME}" raspi-config nonint do_vnc 1
EOF
