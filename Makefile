TWRP_SOURCE = https://github.com/PhantomZone54/twrp_sources_norepo/releases/download/latest/MinimalOmniRecovery-twrp-5.1-norepo-20210130.tzst
ROOM_SOURCE = https://gist.github.com/rokibhasansagar/247ddd4ef00dcc9d3340397322051e6a/raw/roomservice_100.py

config:
	 mkdir ~/twrp/
	 wget -q --show-progress --progress=bar:force "$(TWRP_SOURCE)" -O twrp.tzst
	 tar --zstd -xf twrp.tzst --directory ~/twrp/ 
	 rm twrp.tzst -rf
	 git clone https://github.com/PokeyManatee4/android_device_ONN_surf7_gen1 ~/twrp/device/ONN/REL
	 rm ~/twrp/bootable/recovery -rf
	 git clone https://github.com/omnirom/android_bootable_recovery -b android-9.0 --depth 1 ~/twrp/bootable/recovery
	 rm ~/twrp/external/busybox/ -rf
	 git clone https://github.com/TeamWin/android_external_busybox -b android-9.0 --depth 1 ~/twrp/external/busybox
	 rm ~/twrp/build/tools/roomservice.py -rf
	 wget -q --show-progress --progress=bar:force "$(ROOM_SOURCE)" -O ~/twrp/build/tools/roomservice.py 
	 chmod +x ~/twrp/build/tools/roomservice.py
