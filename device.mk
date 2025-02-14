#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/a03s

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Project ID Quota
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

$(call inherit-product, device/samsung/mt6765-jdm/mt6765.mk)

# Kernel Modules
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(DEVICE_PATH)/vendor_overlay/,$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/31/)

# Bluetooth Props
PRODUCT_SYSTEM_PROPERTIES += \
    persist.sys.bt.unsupport.features=00000000 \
    persist.sys.bt.unsupport.states=00000000 \
    persist.sys.bt.unsupport.stdfeatures=00000000
    ro.infinity.soc=MediaTek P35
    ro.infinity.battery=5000 mAh
    ro.infinity.display=720 x 1600, 60Hz
    ro.infinity.camera=13MP + 5MP + 2MP + 2MP
    ro.product.marketname=Galaxy A03s
