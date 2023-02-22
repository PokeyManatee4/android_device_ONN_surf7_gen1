ifneq ($(filter REL,ONN),)
LOCAL_PATH := device/ONN/REL
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
