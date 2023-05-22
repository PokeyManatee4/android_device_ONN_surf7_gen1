#!/bin/sh

echo "Starting"
cd /home/runner/twrp
echo "Sourcing"
source /home/runner/twrp/build/envsetup.sh
echo "Lunching"

lunch omni_ONN-eng
echo "Making"
export ALLOW_MISSING_DEPENDENCIES=true && make recoveryimage

