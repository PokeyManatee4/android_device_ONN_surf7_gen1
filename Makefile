TWRP_SOURCE = https://github.com/PhantomZone54/twrp_sources_norepo/releases/download/v3.4.0-20201103/MinimalOmniRecovery-twrp-7.1-norepo-20201103.tzst
config:
	 mkdir ~/twrp/
	 wget -q --show-progress --progress=bar:force "$(TWRP_SOURCE)" -O twrp.tzst
	 tar --zstd -xf twrp.tzst --directory ~/twrp/ 
	 rm twrp.tzst
	 git clone https://github.com/PokeyManatee4/android_device_ONN_surf7_gen1.git ~/twrp/device/ONN/REL
	 rm -rf ~/twrp/bootable/recovery 
	 git clone https://github.com/omnirom/android_bootable_recovery -b android-9.0 --depth 1 ~/twrp/bootable/recovery

all:
	cd ~/twrp
	source build/envsetup.sh
	lunch omni_ONN-eng
	make -j$(nproc --all) recoveryimage
