ifneq ($(filter REL,$(TARGET_DEVICE)),)
LOCAL_PATH := device/ONN/REL
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
