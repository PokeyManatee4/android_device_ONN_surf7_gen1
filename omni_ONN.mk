$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_COPY_FILES += device/ONN/REL/prebuilt/zImage

PRODUCT_DEVICE := REL
PRODUCT_NAME := omni_ONN
PRODUCT_BRAND := ONN
PRODUCT_MODEL := REL
PRODUCT_MANUFACTURER := ONN
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="ONN/100005206/mid7015_mk_32:9/PPR1.180610.011/kanghua10231432:user/release-keys" \
    PRIVATE_BUILD_DESC="full_mid7015_mk_32-user 9 PPR1.180610.011 eng.fuqian.20191023.144734 release-keys"
