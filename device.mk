#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# Copyright (C) 2023-2024 The OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

LOCAL_PATH := device/xiaomi/chime

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    vendor/qcom/opensource/commonsys-intf/display \
    $(LOCAL_PATH)

# API & VNDK
PRODUCT_SHIPPING_API_LEVEL := 31
PRODUCT_TARGET_VNDK_VERSION := 31

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Additional binaries & libraries needed for recovery
TARGET_RECOVERY_DEVICE_MODULES += \
    libion \
    vendor.display.config@1.0 \
    vendor.display.config@2.0 \
    libdisplayconfig.qti \
    vendor.qti.hardware.vibrator.service \
    vendor.qti.hardware.vibrator.impl \
    libqtivibratoreffect

#Properties
TW_OVERRIDE_SYSTEM_PROPS := \
    "ro.build.fingerprint=ro.system.build.fingerprint;ro.build.version.incremental"

RECOVERY_BINARY_SOURCE_FILES += \
    $(TARGET_OUT_VENDOR_EXECUTABLES)/hw/vendor.qti.hardware.vibrator.service

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so \
    $(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/vendor.display.config@1.0.so \
    $(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/vendor.display.config@2.0.so \
    $(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/libdisplayconfig.qti.so \
    $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/vendor.qti.hardware.vibrator.impl.so \
    $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/libqtivibratoreffect.so
