#!/bin/sh

echo "Starting"
cd /home/runner/twrp
echo "Sourcing"
source /home/runner/twrp/build/envsetup.sh
echo "Lunching"
lunch omni_ONN-eng
echo "Making"
export USE_NINJA=false && make recoveryimage -j$(nproc)

