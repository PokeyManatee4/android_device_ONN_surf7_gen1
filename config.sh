export TWRP_SOURCE=https://github.com/PhantomZone54/twrp_sources_norepo/releases/download/v3.4.0-20201103/MinimalOmniRecovery-twrp-6.0-norepo-20201103.tzst
export ROOM_SOURCE=https://gist.github.com/rokibhasansagar/247ddd4ef00dcc9d3340397322051e6a/raw/roomservice_90.py


	 mkdir ~/twrp/
	 wget -q --show-progress --progress=bar:force "$TWRP_SOURCE"

    
	 tar --zstd -xf *.tzst --directory ~/twrp/ 
	
	 rm *.tzst -rf	
	 
	 git clone https://github.com/PokeyManatee4/android_device_ONN_surf7_gen1 ~/twrp/device/ONN/REL
	 rm ~/twrp/bootable/recovery -rf
	 rm ~/twrp/build/tools/roomservice.py -rf
	 git clone https://github.com/omnirom/android_bootable_recovery -b android-6.0 ~/twrp/bootable/recovery
	 wget -q --show-progress --progress=bar:force "$ROOM_SOURCE" -O ~/twrp/build/tools/roomservice.py
	 chmod 755 ~/twrp/build/tools/roomservice.py
