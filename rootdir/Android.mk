LOCAL_PATH := $(call my-dir)

# Device init scripts

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.zuk.usb.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/init.zuk.usb.rc
LOCAL_VENDOR_MODULE	:= true
LOCAL_MODULE_RELATIVE_PATH	:= init/hw
include $(BUILD_PREBUILT)
