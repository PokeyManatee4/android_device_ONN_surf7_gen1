TWRP_SOURCE = https://github.com/PhantomZone54/twrp_sources_norepo/releases/download/v3.4.0-20201103/MinimalOmniRecovery-twrp-6.0-norepo-20201103.tzst
ROOM_SOURCE = https://gist.github.com/rokibhasansagar/247ddd4ef00dcc9d3340397322051e6a/raw/roomservice_100.py

config:
	 mkdir ~/twrp/
	 wget -q --show-progress --progress=bar:force "$(TWRP_SOURCE)" -O twrp.tzst
	 tar --zstd -xf twrp.tzst --directory ~/twrp/ 
	 rm twrp.tzst -rf
	 git clone https://github.com/PokeyManatee4/android_device_ONN_surf7_gen1 ~/twrp/device/ONN/REL
	 rm ~/twrp/bootable/recovery -rf
	 rm ~/twrp/external/icu -rf
	 rm ~/twrp/external/sepolicy -rf
	 rm ~/twrp/external/f2fs-tools -rf
	 rm ~/twrp/external/boringssl -rf
	 rm ~/twrp/external/busybox/ -rf
	 rm ~/twrp/external/unzip/ -rf
	 rm ~/twrp/build/tools/roomservice.py -rf
	 wget -q --show-progress --progress=bar:force "$(ROOM_SOURCE)" -O ~/twrp/build/tools/roomservice.py 
	 chmod +x ~/twrp/build/tools/roomservice.py
