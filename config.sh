export TWRP_SOURCE1=https://github.com/PhantomZone54/twrp_sources_norepo/releases/download/v3.4.0-20201103/MinimalOmniRecovery-twrp-9.0-norepo-20201103.tzst.aa
export TWRP_SOURCE2=https://github.com/PhantomZone54/twrp_sources_norepo/releases/download/v3.4.0-20201103/MinimalOmniRecovery-twrp-9.0-norepo-20201103.tzst.ab
export TWRP_SOURCE3=https://github.com/PhantomZone54/twrp_sources_norepo/releases/download/v3.4.0-20201103/MinimalOmniRecovery-twrp-9.0-norepo-20201103.tzst.ac
export TWRP_SOURCE4=https://github.com/PhantomZone54/twrp_sources_norepo/releases/download/v3.4.0-20201103/MinimalOmniRecovery-twrp-9.0-norepo-20201103.tzst.ad
export ROOM_SOURCE=https://gist.github.com/rokibhasansagar/247ddd4ef00dcc9d3340397322051e6a/raw/roomservice_90.py


	 mkdir ~/twrp/
	 wget -q --show-progress --progress=bar:force "$TWRP_SOURCE1" "$TWRP_SOURCE2" "$TWRP_SOURCE3" "$TWRP_SOURCE4"

         cat *.aa *.ab > Min1.part
	 cat *.part *.ac >> Min2.part2
	 cat *.part2 *.ad >> MinimalOmniRecovery.tzst
	 tar --zstd -xf MinimalOmniRecovery.tzst --directory ~/twrp/ 
	 rm *.aa *.ab *.ac *.ad *.part *.part2 -rf
	 rm MinimalOmniRecovery.tzst -rf	
	 
	 git clone https://github.com/PokeyManatee4/android_device_ONN_surf7_gen1 ~/twrp/device/ONN/REL
	 rm ~/twrp/bootable/recovery -rf
	 rm ~/twrp/build/tools/roomservice.py -rf
	 git clone https://github.com/omnirom/android_bootable_recovery -b android-9.0 ~/twrp/bootable/recovery
	 wget -q --show-progress --progress=bar:force "$ROOM_SOURCE" -O ~/twrp/build/tools/roomservice.py
	 chmod 755 ~/twrp/build/tools/roomservice.py
