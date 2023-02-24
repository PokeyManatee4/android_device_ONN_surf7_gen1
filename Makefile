TWRP_SOURCE = "https://github.com/PhantomZone54/twrp_sources_norepo/releases/download/v3.4.0-20201103/MinimalOmniRecovery-twrp-6.0-norepo-20201103.tzst"
config:
	 wget -q $(TWRP_SOURCE) -O ~/twrp.tar.xz
	 cd ~ && mkdir twrp
	 tar -xJf twrp.tar.xz --directory ~/twrp/
	 rm twrp.tar.xz
	 cd ~/twrp/
	 git clone https://github.com/PokeyManatee4/android_device_ONN_surf7_gen1.git device/ONN/REL
	 rm -rf bootable/recovery && git clone https://github.com/omnirom/android_bootable_recovery -b android-9.0 --depth 1 bootable/recovery
	
all:
	chmod +x docker.sh
	./docker.sh
