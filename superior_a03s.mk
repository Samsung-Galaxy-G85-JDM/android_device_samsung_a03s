#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/superior/config/common.mk)

# Inherit from a05m device
$(call inherit-product, device/samsung/a03s/device.mk)

# Inherit from hq-camera-samsung
$(call inherit-product, vendor/samsung/hq-camera/hqcamera-samsung-hs04.mk)

TARGET_EXCLUDES_AUDIOFX := true

PRODUCT_DEVICE := a03s
PRODUCT_NAME := superior_a03s
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy A03s
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

ORION_MAINTAINER := Smiley_9000
ORION_BUILD_TYPE := Unofficial
ORION_GAPPS := true
TARGET_BOOT_ANIMATION_RES := 720
WITH_GMS := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="a03sub-user 12 SP1A.210812.016 A037MUBSACXK4 release-keys" \
    BuildFingerprint=samsung/a03sub/a03s:12/SP1A.210812.016/A037MUBSACXK4:user/release-keys


