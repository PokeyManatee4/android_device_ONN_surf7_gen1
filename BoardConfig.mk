LOCAL_PATH := device/ONN/REL

TARGET_BOARD_PLATFORM := mt8167
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := mid7015_mk_32

BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true

ALLOW_MISSING_DEPENDENCIES := true

TARGET_USES_64_BIT_BINDER := true

OVERRIDE_TARGET_FLATTEN_APEX := true

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 1000000
BOARD_FLASH_BLOCK_SIZE := 0
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_NO_MISC_PARTITION := true 
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_CHARGER_SHOW_PERCENTAGE := false
RECOVERY_SDCARD_ON_DATA := true               # Optional: If /sdcard partition is emulated on /data partition 

# TWRP stuff
TW_EXCLUDE_SUPERSU := false                  # true/false: Add SuperSU or not
TW_INCLUDE_CRYPTO := true                     # true/false: Add Data Encryption Support or not
TW_INPUT_BLACKLIST := "hbtp_vm"               # Optional: Disables virtual mouse
TW_SCREEN_BLANK_ON_BOOT := true
TW_USE_TOOLBOX := true
TW_THEME := portrait_hdpi                    # Set the exact theme you wanna use. If resulation doesn't match, define the height/width
DEVICE_RESOLUTION := 1024x600                # The Resolution of your Device
TARGET_SCREEN_HEIGHT := 1024                    # The height
TARGET_SCREEN_WIDTH := 600                      # The width
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_SECONDARY_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt8167/leds/lcd-backlight/brightness
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 80                   # Set custom brightness, low is better

TW_INCLUDE_NTFS_3G := true                   # Include NTFS Filesystem Support
TW_INCLUDE_FUSE_EXFAT := true              # Include Fuse-ExFAT Filesystem Support
TWRP_INCLUDE_LOGCAT := false                   # Include LogCat Binary
TW_INCLUDE_FB2PNG := false                     # Include Screenshot Support
TW_DEFAULT_LANGUAGE := en                     # Set Default Language 
TW_EXTRA_LANGUAGES := false

# Kernel
TARGET_SCREEN_DENSITY := 160
BOARD_BOOTIMG_HEADER_VERSION := 1
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,32N2 buildvariant=user veritykeyid=id:7e4333f9bba00adfe0ede979e28ed1920492b40f
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x15000000
BOARD_KERNEL_TAGS_OFFSET := 0x14000000
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_SEPARATED_DTBO := true
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/zImage:zImage
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/zImage-dtbo
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/recovery.fstab

VENDOR_SECURITY_PATCH := 2021-08-01


PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 9.0.0

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := generic
