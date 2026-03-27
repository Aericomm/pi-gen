#!/bin/bash -e

on_chroot <<- EOF
wget https://raw.githubusercontent.com/node-red/linux-installers/master/deb/update-nodejs-and-nodered \
    -O /tmp/install_nodered.sh
useradd -m nodered
bash /tmp/install_nodered.sh  --confirm-install --confirm-pi  --nodered-user=nodered
rm /tmp/install_nodered.sh
EOF

install -v -m 755 files/settings.js "${ROOTFS_DIR}/home/nodered/.node-red/settings.js" 
