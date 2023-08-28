#
# Copyright (C) 2021-2023 The arrowOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from negroni device
$(call inherit-product, device/oneplus/negroni/device.mk)

# Inherit some common arrow stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

PRODUCT_NAME := arrow_negroni
PRODUCT_DEVICE := negroni
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := NE2210

PRODUCT_SYSTEM_NAME := NE2210EEA
PRODUCT_SYSTEM_DEVICE := OP516FL1

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="NE2210EEA-user 13 SKQ1.221119.001 S.ffbc55_1-31d9 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/NE2210EEA/OP516FL1:13/SKQ1.221119.001/S.ffbc55_1-31d9:user/release-keys
