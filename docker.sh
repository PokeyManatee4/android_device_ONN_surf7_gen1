#!/bin/bash

echo "Starting"
mkdir /srv/ccache/tmp
chmod 755 /srv/ccache/tmp
cd ~/twrp
echo "Sourcing"
source ~/twrp/build/envsetup.sh
echo "Lunching"
export ALLOW_MISSING_DEPENDENCIES=true
lunch omni_ONN-eng
echo "Making"
make clean
make recoveryimage
echo "Done!"

