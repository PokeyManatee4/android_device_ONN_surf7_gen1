#!/bin/sh

cd /home/runner

docker run --rm -i -e USER_ID=$(id -u) -e GROUP_ID=$(id -g) -v "$(pwd):/home/builder/:rw,z" -v "${HOME}/.ccache:/srv/ccache:rw,z" fr3akyphantom/droid-builder source build/envsetup.sh && lunch omni_REL-eng && make -j$(nproc --all) recoveryimage
export version=$(cat bootable/recovery/variables.h | grep "define TW_MAIN_VERSION_STR" | cut -d '"' -f2)
cp ~/out/target/product/REL/recovery.img ~/twrp/TWRP-$version-REL-$(date +"%Y%m%d")-Unofficial.img
