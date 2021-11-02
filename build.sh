#!/usr/bin/env bash

source ./env.sh

cd $LINUX_SOURCE

if [ "$ARCH" = "arm" ]; then
	make -j7 zImage modules dtbs
else
	make -j7 Image modules dtbs
fi