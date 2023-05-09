#!/bin/bash

echo "Starting"
cd ~/twrp
echo "Sourcing"
source ~/twrp/build/envsetup.sh
echo "Lunching"
lunch omni_ONN-eng
echo "Making"
mka recoveryimage
echo "Done!"

