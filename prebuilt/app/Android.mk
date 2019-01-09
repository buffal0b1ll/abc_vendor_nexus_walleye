# Copyright (C) 2016 The Pure Nexus Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := PrebuiltDeskClockGoogle
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := PrebuiltDeskClockGoogle/PrebuiltDeskClockGoogle.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_DEX_PREOPT := false
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := PrebuiltDeskClockGoogle.apk.prof
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := FAKE
LOCAL_SRC_FILES := PrebuiltDeskClockGoogle/PrebuiltDeskClockGoogle.apk.prof
include $(BUILD_SYSTEM)/base_rules.mk
$(LOCAL_BUILT_MODULE): TARGET := $(LOCAL_SRC_FILES)
$(LOCAL_BUILT_MODULE): SYMLINK := $(TARGET_OUT)/app/PrebuiltDeskClockGoogle/$(LOCAL_MODULE)
$(LOCAL_BUILT_MODULE):
	$(hide) echo "Copy: $(TARGET) -> $(SYMLINK)"
	$(hide) cp $(TARGET) $(SYMLINK)

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleContacts
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := GoogleContacts/GoogleContacts.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_DEX_PREOPT := false
LOCAL_OVERRIDES_PACKAGES := \
    Contacts
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleContacts.apk.prof
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := FAKE
LOCAL_SRC_FILES := GoogleContacts/GoogleContacts.apk.prof
include $(BUILD_SYSTEM)/base_rules.mk
$(LOCAL_BUILT_MODULE): TARGET := $(LOCAL_SRC_FILES)
$(LOCAL_BUILT_MODULE): SYMLINK := $(TARGET_OUT)/app/GoogleContacts/$(LOCAL_MODULE)
$(LOCAL_BUILT_MODULE):
	$(hide) echo "Copy: $(TARGET) -> $(SYMLINK)"
	$(hide) cp $(TARGET) $(SYMLINK)

include $(CLEAR_VARS)
LOCAL_MODULE := LatinIMEGooglePrebuilt
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := LatinIMEGooglePrebuilt/LatinIMEGooglePrebuilt.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_DEX_PREOPT := false
LOCAL_OVERRIDES_PACKAGES := \
    LatinIME
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := PrebuiltBugle
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := PrebuiltBugle/PrebuiltBugle.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_DEX_PREOPT := false
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)
