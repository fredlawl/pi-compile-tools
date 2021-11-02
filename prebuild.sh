#!/usr/bin/env bash

source ./env.sh

cd $LINUX_SOURCE

make clean
make mrproper

if [ "$ARCH" = "arm" ]; then
	make bcm2709_defconfig
else
	make bcmrpi3_defconfig
fi

make olddefconfig