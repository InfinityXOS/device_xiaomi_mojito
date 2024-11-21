#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mojito device
$(call inherit-product, device/xiaomi/mojito/device.mk)

# Inherit some Infinity-X stuffs
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Some Build Flags
INFINITY_BUILD_TYPE := UNOFFICIAL
INFINITY_MAINTAINER := Sachin_07
TARGET_SUPPORTS_BLUR := true
WITH_GAPPS := true
TARGET_BUILD_GOOGLE_TELEPHONY := false

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_mojito
PRODUCT_DEVICE := mojito
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
