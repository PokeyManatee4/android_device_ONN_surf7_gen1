#!/bin/bash

echo "Starting"
repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0
repo sync
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

