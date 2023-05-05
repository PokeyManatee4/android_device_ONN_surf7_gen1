#!/bin/bash

echo "Starting"
mkdir .repo/local_manifests -p
cd ~/twrp
echo "Sourcing"
source ~/twrp/build/envsetup.sh
echo "Lunching"
lunch omni_ONN-eng
echo "Making"
mka recoveryimage
echo "Done!"

