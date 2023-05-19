#!/bin/bash

echo "Starting"
sudo chmod 755 -R ~/twrp
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

