LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_USE_AAPT2 := true

LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_SRC_FILES += $(call all-proto-files-under, protos)
LOCAL_SRC_FILES += src/com/cdtsp/hmilib/mediaclient/os/IMediaClientController.aidl
LOCAL_SRC_FILES += $(call all-Iaidl-files-under, src)
LOCAL_AIDL_INCLUDES := $(call all-Iaidl-files-under, src)

LOCAL_STATIC_JAVA_LIBRARIES := dms
LOCAL_STATIC_JAVA_LIBRARIES += android-support-v4
LOCAL_STATIC_JAVA_LIBRARIES += SettingsLib
LOCAL_STATIC_JAVA_LIBRARIES += libskinLoader

LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res
LOCAL_RESOURCE_DIR += frameworks/base/packages/SettingsLib/res
LOCAL_RESOURCE_DIR += frameworks/support/v7/preference/res
LOCAL_RESOURCE_DIR += frameworks/support/v14/preference/res
LOCAL_RESOURCE_DIR += vendor/chinatsp/apps/SkinLoaderlib/res

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := TspHmiLib
LOCAL_CERTIFICATE := platform
#include frameworks/base/packages/SettingsLib/common.mk
include $(BUILD_STATIC_JAVA_LIBRARY)
