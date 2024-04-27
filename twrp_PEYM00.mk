#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from PEYM00 device
$(call inherit-product, device/OPPO/PEYM00/device.mk)

PRODUCT_DEVICE := PEYM00
PRODUCT_NAME := twrp_PEYM00
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := PEYM00
PRODUCT_MANUFACTURER := OPPO

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_mssi_64_cn_armv82-user 13 TP1A.220905.001 1702974232115 release-keys"

BUILD_FINGERPRINT := OPPO/PEYM00/PEYM00:13/TP1A.220905.001/1702974232115:user/release-keys
