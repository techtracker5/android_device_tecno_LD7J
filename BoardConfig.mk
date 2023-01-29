#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/selene

# APEX
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a-dotprod
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a75

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a55

# Boot
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x07c08000
BOARD_KERNEL_SECOND_OFFSET := 0x00e88000
BOARD_KERNEL_TAGS_OFFSET := 0x0bc08000
BOARD_DTB_OFFSET := 0x0bc08000
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_BOOT_HEADER_VERSION := 2

BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2

# Bootloader
BOARD_VENDOR := xiaomi
TARGET_BOOTLOADER_BOARD_NAME := selene
TARGET_NO_BOOTLOADER := true

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/xiaomi/selene
TARGET_KERNEL_CONFIG := selene_defconfig
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CLANG_VERSION := r383902
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_KERNEL_IMAGE_NAME := Image.gz

# Platform
TARGET_BOARD_PLATFORM := mt6768

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.mt6768

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# SPL
VENDOR_SECURITY_PATCH := 2022-04-05

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# VINTF
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE += $(DEVICE_PATH)/compatibility_matrix.xml

# VNDK
BOARD_VNDK_VERSION := current

# Inherit the proprietary files
include vendor/xiaomi/selene/BoardConfigVendor.mk
