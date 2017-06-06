LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

##include ../../sdk/native/jni/OpenCV-tegra3.mk

OPENCVROOT:=/home/fs/NVPACK/OpenCV-2.4.8.2-Tegra-sdk
#OPENCV_LIB_TYPE:=STATIC
## include ${OPENCVROOT}/sdk/native/jni/OpenCV.mk
include ${OPENCVROOT}/sdk/native/jni/OpenCV-tegra3.mk

LOCAL_MODULE    := mixed_sample
LOCAL_SRC_FILES := jni_part.cpp
LOCAL_LDLIBS +=  -llog -ldl

include $(BUILD_SHARED_LIBRARY)
