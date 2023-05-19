#!/bin/sh

echo "Starting"
cd /home/runner/twrp
echo "Sourcing"
. /home/runner/twrp/build/envsetup.sh
echo "Lunching"
export ALLOW_MISSING_DEPENDENCIES=true
lunch omni_ONN-eng
echo "Making"
mka recoveryimage
echo "Done!"

