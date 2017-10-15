ifeq ($(TARGET_DEVICE), Z01G)
LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles, $(LOCAL_PATH))

include $(CLEAR_VARS)
endif