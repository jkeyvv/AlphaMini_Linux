#!/bin/bash
ARCH=arm
export ARCH
CROSS_COMPILE=arm-linux-gnueabihf-
export CROSS_COMPILE
make distclean
make imx_v7_alphamini_defconfig
make menuconfig
make all
cp ./arch/arm/boot/zImage ~/tftp/
cp ./arch/arm/boot/dts/imx6ull-alphamini.dtb ~/tftp/
