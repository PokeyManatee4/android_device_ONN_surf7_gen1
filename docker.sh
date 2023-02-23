#!/bin/sh

docker run --rm -i -e USER_ID=$(id -u) -e GROUP_ID=$(id -g) -v "$(pwd):/home/builder/:rw,z" -v "${HOME}/.ccache:/srv/ccache:rw,z" fr3akyphantom/droid-builder bash
cd /home/runner/
source build/envsetup.sh
BUILD_FLAVOR="eng"
lunch omni_REL-${BUILD_FLAVOR}
make -j$(nproc --all) recoveryimage
exit
export version=$(cat bootable/recovery/variables.h | grep "define TW_MAIN_VERSION_STR" | cut -d '"' -f2)
cp ~/out/target/product/REL/recovery.img ~/twrp/TWRP-$version-REL-$(date +"%Y%m%d")-Unofficial.img
