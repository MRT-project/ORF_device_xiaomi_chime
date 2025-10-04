#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
# SPDX-License-Identifier: Apache-2.0
#
# Copyright (C) 2023 The OrangeFox Recovery Project
# SPDX-License-Identifier: GPL-3.0-or-later

DEVICE_PATH := device/xiaomi/chime
PRODUCT_RELEASE_NAME := chime

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from xiaomi device
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from xiaomi device
$(call inherit-product, device/xiaomi/chime/device.mk)

# Inherit any OrangeFox-specific settings
$(call inherit-product-if-exists, $(DEVICE_PATH)/fox_chime.mk)

PRODUCT_DEVICE := chime
PRODUCT_NAME := twrp_chime
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := SM6115
PRODUCT_MANUFACTURER := Xiaomi
