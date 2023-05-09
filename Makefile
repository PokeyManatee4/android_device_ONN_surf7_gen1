TWRP_SOURCE1 = https://github.com/PhantomZone54/twrp_sources_norepo/releases/download/v3.4.0-20201103/MinimalOmniRecovery-twrp-9.0-norepo-20201103.tzst.aa
TWRP_SOURCE2 = https://github.com/PhantomZone54/twrp_sources_norepo/releases/download/v3.4.0-20201103/MinimalOmniRecovery-twrp-9.0-norepo-20201103.tzst.ab
TWRP_SOURCE3 = https://github.com/PhantomZone54/twrp_sources_norepo/releases/download/v3.4.0-20201103/MinimalOmniRecovery-twrp-9.0-norepo-20201103.tzst.ac
TWRP_SOURCE4 = https://github.com/PhantomZone54/twrp_sources_norepo/releases/download/v3.4.0-20201103/MinimalOmniRecovery-twrp-9.0-norepo-20201103.tzst.ad
ROOM_SOURCE = https://gist.github.com/rokibhasansagar/247ddd4ef00dcc9d3340397322051e6a/raw/roomservice_100.py

config:
	 mkdir ~/twrp/
	 wget -q --show-progress --progress=bar:force "$(TWRP_SOURCE1)" "$(TWRP_SOURCE2)" "$(TWRP_SOURCE3)" "$(TWRP_SOURCE4)"
	 cat MinimalOmniRecovery-twrp-9.0-norepo-20210130.tzst.* | tar --zstd -xv --directory ~/twrp 
	 rm *.a*
	 git clone https://github.com/PokeyManatee4/android_device_ONN_surf7_gen1 ~/twrp/device/ONN/REL
	 rm ~/twrp/bootable/recovery -rf 
	 git clone https://github.com/omnirom/android_bootable_recovery -b android-9.0 --depth 1 ~/twrp/bootable/recovery
	 rm -rf ~/twrp/build/tools/roomservice.py
	 wget -q --show-progress --progress=bar:force "$(ROOM_SOURCE)" -O ~/twrp/build/tools/roomservice.py 
	 chmod +x ~/twrp/build/tools/roomservice.py
