TWRP_SOURCE = "https://github.com/PhantomZone54/twrp_sources_norepo/releases/download/v3.4.0-20201103/MinimalOmniRecovery-twrp-6.0-norepo-20201103.tzst"
config:
	mkdir ~/twrp
	aria2c -x16 -s8 --console-log-level=error --summary-interval=0 $(TWRP_SOURCE) -o twrp.tzst || wget -q --show-progress --progress=bar:force $(TWRP_SOURCE) -O twrp.tzst
	tar --zstd -xf twrp.tzst --directory ~/twrp
	rm twrp.tzst
	rm MinimalOmniRecovery*.tzst.*
	
all:
	cd ~
	git clone https://github.com/PokeyManatee4/android_device_ONN_surf7_gen1.git device/ONN/REL
	docker run --rm -i -e USER_ID=$(id -u) -e GROUP_ID=$(id -g) -v "$(pwd):/home/builder/:rw,z" -v "${HOME}/.ccache:/srv/ccache:rw,z" fr3akyphantom/droid-builder bash
	cd /home/builder/twrp/
	source build/envsetup.sh
	BUILD_FLAVOR="eng"
	lunch omni_REL-${BUILD_FLAVOR}
	make -j$(nproc --all) recoveryimage
	exit
	export version=$(cat bootable/recovery/variables.h | grep "define TW_MAIN_VERSION_STR" | cut -d '"' -f2)
	cp ~/twrp/out/target/product/REL/recovery.img ~/twrp/TWRP-$version-REL-$(date +"%Y%m%d")-Unofficial.img
	cd ~/twrp/
