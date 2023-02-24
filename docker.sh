#!/bin/sh

cd /home/runner

docker run fr3akyphantom/droid-builder source build/envsetup.sh && lunch omni_REL-eng && make -j$(nproc --all) recoveryimage
export version=$(cat bootable/recovery/variables.h | grep "define TW_MAIN_VERSION_STR" | cut -d '"' -f2)
cp ~/out/target/product/REL/recovery.img ~/twrp/TWRP-$version-REL-$(date +"%Y%m%d")-Unofficial.img
