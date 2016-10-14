# Copyright (C) 2014 The Android Open Source Project
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

# CM Build
TARGET_UNOFFICIAL_BUILD_ID := SonyCM

# Audio
include vendor/qcom/extras/proprietary.mk

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
DEVICE_SPECIFIC_CAMERA_PATH := hardware/sony/camera
TARGET_COMPILE_WITH_MSM_KERNEL := true

# CM Hardware
BOARD_HARDWARE_CLASS += device/sony/common/cmhw

# CM Packages
PRODUCT_PACKAGES += \
    Gello

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    telephony.lteOnGSMDevice=1
