TWRP_SOURCE = "https://github.com/PhantomZone54/twrp_sources_norepo/releases/download/v3.4.0-20201103/MinimalOmniRecovery-twrp-6.0-norepo-20201103.tzst"
config:
	aria2c -x16 -s8 --console-log-level=error --summary-interval=0 $(TWRP_SOURCE) -o twrp.tzst || wget -q --show-progress --progress=bar:force $(TWRP_SOURCE) -O twrp.tzst
	tar --zstd -xf twrp.tzst --directory ~
	rm twrp.tzst
	
all:
	git clone https://github.com/PokeyManatee4/android_device_ONN_surf7_gen1.git device/ONN/REL
	chmod +x docker.sh
	./docker.sh
