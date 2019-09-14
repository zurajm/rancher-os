#/bin/bash
file=os/scripts/images/raspberry-pi-hypriot64/Dockerfile.dapper
sed -i 's/KERNEL_URL\=.*/KERNEL_URL\=https:\/\/github.com\/zurajm\/rancher-os-rpi-kernel\/releases\/download\/v4.14.114-rancher-rbd\/4.14.114-rancheros-v8.tar.gz/g' ${file} 
sed -i 's/BOOTLOADER_URL\=.*/BOOTLOADER_URL\=https:\/\/github.com\/zurajm\/rancher-os-rpi-kernel\/releases\/download\/v4.14.114-rancher-rbd\/rpi-bootloader.tar.gz/g' ${file}
pushd os
make
make rpi64
