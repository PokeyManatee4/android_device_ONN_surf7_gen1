TWRP_SOURCE = "https://github.com/PhantomZone54/twrp_sources_norepo/releases/download/v3.3.1-20200222/MinimalOmniRecovery-twrp-7.1-norepo-20200222.tar.xz"
config:
	 wget -q $(TWRP_SOURCE) -O ~/twrp.tar.xz
	 mkdir ~/twrp
	 tar -xJf ~/twrp.tar.xz --directory ~/twrp/
	 rm ~/twrp.tar.xz
	 git clone https://github.com/PokeyManatee4/android_device_ONN_surf7_gen1.git ~/twrp/device/ONN/REL
	 rm -rf ~/twrp/bootable/recovery && git clone https://github.com/omnirom/android_bootable_recovery -b android-9.0 --depth 1 ~/twrp/bootable/recovery

all:
	cd ~/twrp
	source build/envsetup.sh
	lunch omni_ONN-eng
	make -j$(nproc --all) recoveryimage
