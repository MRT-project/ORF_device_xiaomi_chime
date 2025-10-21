#
# Copyright 2018 The Android Open Source Project
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
#

# maintainer
OF_MAINTAINER := AnGgIt86 M•R•T

# Version of orangefox recovery automatic
FOX_MAINTAINER_PATCH_VERSION := 1

# Partition settings
FOX_RECOVERY_SYSTEM_PARTITION := /dev/block/dm-1
FOX_RECOVERY_SYSTEMEXT_PARTITION := /dev/block/dm-2
FOX_RECOVERY_PRODUCT_PARTITION := /dev/block/dm-3
FOX_RECOVERY_VENDOR_PARTITION := /dev/block/dm-0

# OrangeFox features
OF_USE_GREEN_LED := 0
OF_HIDE_NOTCH := 1
OF_USE_MAGISKBOOT := 1
OF_USE_MAGISKBOOT_FOR_ALL_PATCHES := 1
OF_DONT_PATCH_ENCRYPTED_DEVICE := 1
FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER := 1
OF_NO_TREBLE_COMPATIBILITY_CHECK := 1
OF_NO_MIUI_PATCH_WARNING := 1
OF_PATCH_AVB20 := 1
OF_IGNORE_LOGICAL_MOUNT_ERRORS := 1
OF_FBE_METADATA_MOUNT_IGNORE := 1
FOX_ENABLE_APP_MANAGER := 1

# Shell and utilities
FOX_USE_BASH_SHELL := 1
FOX_ASH_IS_BASH := 1
FOX_USE_TAR_BINARY := 1
FOX_USE_SED_BINARY := 1
FOX_USE_XZ_UTILS := 1
FOX_USE_NANO_EDITOR := 1

# Backup and OTA
OF_QUICK_BACKUP_LIST := /boot;/dtbo;/data;/system_image;/vendor_image;/product_image;
OF_KEEP_DM_VERITY := 1
OF_SUPPORT_ALL_BLOCK_OTA_UPDATES := 1
OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR := 1
OF_DISABLE_MIUI_OTA_BY_DEFAULT := 1
FOX_DELETE_AROMAFM := 1
FOX_BUGGED_AOSP_ARB_WORKAROUND := 1546300800

# try to prevent potential data format errors
OF_UNBIND_SDCARD_F2FS := 1

# screen settings
OF_SCREEN_H := 2340
OF_STATUS_H := 100
OF_STATUS_INDENT_LEFT := 48
OF_STATUS_INDENT_RIGHT := 48
OF_HIDE_NOTCH := 1
OF_CLOCK_POS := 1

# f2fs compression
OF_ENABLE_FS_COMPRESSION := 1

# avoid decryption problems on some devices and ROMs
OF_FIX_DECRYPTION_ON_DATA_MEDIA := 1
