#!/bin/bash
cd /home/builder/twrp && source build/envsetup.sh && lunch omni_ONN-eng && make -j$(nproc --all) recoveryimage

