#!/bin/bash

echo "Starting"
cd ~/twrp
echo "Sourcing"
source ~/twrp/build/envsetup.sh
echo "Lunching"
lunch omni_REL-eng
echo "Making"
make -j$(nproc --all) recoveryimage
echo "Done!"

