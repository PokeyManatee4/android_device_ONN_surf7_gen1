#!/bin/bash

docker run --rm -i -e USER_ID=$(id -u) -e GROUP_ID=$(id -g) -v "$(pwd):/home/builder/twrp/:rw,z" -v "${HOME}/.ccache:/srv/ccache:rw,z" fr3akyphantom/droid-builder bash

cd /home/builder/twrp/
source build/envsetup.sh
lunch omni_ONN-eng
make -j$(nproc --all) recoveryimage
exit
