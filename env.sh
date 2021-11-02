#!/usr/bin/env bash

# This is for raspberry pi 3 b+

export LINUX_SOURCE=~/Linux/linux-pi3

# 32bit
export KERNEL=kernel7
export CROSS_COMPILE=arm-linux-gnueabihf-
export ARCH=arm

# 64bit
#export KERNEL=kernel8
#export ARCH=arm64
#export CROSS_COMPILE=aarch64-linux-gnu-