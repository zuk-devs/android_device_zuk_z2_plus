# Copyright (C) 2013-2016, The CyanogenMod Project
# Copyright (C) 2017, The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from z2x device
$(call inherit-product, device/zuk/z2x/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_z2x
PRODUCT_DEVICE := z2x
PRODUCT_BRAND := ZUK
PRODUCT_MODEL := z2x
PRODUCT_MANUFACTURER := ZUK
PRODUCT_GMS_CLIENTID_BASE := android-zuk
TARGET_VENDOR_PRODUCT_NAME := z2x
TARGET_VENDOR_DEVICE_NAME := z2x

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="z2x" \
    PRODUCT_NAME="z2x" \
    PRIVATE_BUILD_DESC="z2x-user 7.0 NRD90M 3.1.193_171023 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "ZUK/z2x/z2x:7.0/NRD90M/3.1.193_171023:user/release-keys"

TARGET_VENDOR := zuk
