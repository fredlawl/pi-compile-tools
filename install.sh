#!/usr/bin/env bash

source ./env.sh

cd $LINUX_SOURCE

mkdir -p ./mnt/fat32
mkdir -p ./mnt/ext4

sudo mount /dev/sda1 ./mnt/fat32
sudo mount /dev/sda2 ./mnt/ext4

sudo cp .config ./mnt/fat32/config

if [ "$ARCH" = "arm" ]; then
	sudo cp arch/$ARCH/boot/zImage ./mnt/fat32/kernel-rpi.img
	sudo cp arch/$ARCH/boot/dts/*.dtb ./mnt/fat32
else
	sudo cp arch/$ARCH/boot/Image ./mnt/fat32/kernel-rpi.img
	sudo cp arch/$ARCH/boot/dts/broadcom/*.dtb mnt/fat32/
fi

sudo cp arch/$ARCH/boot/dts/overlays/*.dtb* ./mnt/fat32/overlays/
sudo cp arch/$ARCH/boot/dts/overlays/README ./mnt/fat32/overlays/
sudo make INSTALL_MOD_PATH=./mnt/ext4 modules_install

sudo umount ./mnt/fat32
sudo umount ./mnt/ext4
sudo rm -rf ./mnt