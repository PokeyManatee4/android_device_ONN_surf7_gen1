#!/bin/bash

echo "Starting"
cd ~/twrp
echo "Sourcing"
source ~/twrp/build/envsetup.sh
echo "Lunching"
lunch omni_ONN-eng
echo "Making"
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
mka recoveryimage
echo "Done!"

