#!/bin/bash
cd ~/twrp/ 
source build/envsetup.sh
lunch &
lunch omni_ONN-eng
make -j$(nproc --all) recoveryimage

