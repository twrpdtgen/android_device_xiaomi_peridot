#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from peridot device
$(call inherit-product, device/xiaomi/peridot/device.mk)

PRODUCT_DEVICE := peridot
PRODUCT_NAME := omni_peridot
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 24069PC21G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="peridot_global-user 14 UKQ1.240624.001 OS2.0.207.0.VNPMIXM release-keys"

BUILD_FINGERPRINT := POCO/peridot_global/peridot:14/UKQ1.240624.001/OS2.0.207.0.VNPMIXM:user/release-keys
