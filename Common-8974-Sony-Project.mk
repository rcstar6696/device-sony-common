# Copyright 2014 The Android Open Source Project
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

## Version
ROM_BUILDTYPE := Rcstar6696-N
ROM_VERSION := $(TARGET_PRODUCT)-$(shell date -u +%Y%m%d)-$(PLATFORM_VERSION)-$(BUILD_ID)-$(ROM_BUILDTYPE)

# Google Assistant
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opa.eligible_device=true

# Test Props    
PRODUCT_PROPERTY_OVERRIDES += \
	ro.media.enc.jpeg.quality=100 \
	video.accelerate.hw=1 \
	debug.performance.tuning=1 \
	ro.ril.disable.power.collapse=1 \
	pm.sleep_mode=1 \
	windowsmgr.support_rotation_270=true

# Bootanimation
PRODUCT_COPY_FILES += \
device/sony/common/rootdir/system/media/XPERIA-Bootanimation.zip:system/media/bootanimation.zip 

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:system/etc/permissions/android.software.freeform_window_management.xml

$(call inherit-product, vendor/8974-Sony-Project/audio/audio_proprietary.mk)
