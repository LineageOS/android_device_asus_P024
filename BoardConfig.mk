#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# config.mk
#
# Product-specific compile-time definitions.
#

LOCAL_PATH := device/asus/P024

# Assert
# TARGET_OTA_ASSERT_DEVICE := 

# Platform
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405

# TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := msm8916

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53


#TARGET_ARCH := arm64
#TARGET_ARCH_VARIANT := armv8-a
#TARGET_CPU_ABI := arm64-v8a
#TARGET_CPU_ABI2 :=
#TARGET_CPU_VARIANT := cortex-a53

#TARGET_2ND_ARCH := arm
#TARGET_2ND_ARCH_VARIANT := armv7-a-neon
#TARGET_2ND_CPU_ABI := armeabi-v7a
#TARGET_2ND_CPU_ABI2 := armeabi
#TARGET_2ND_CPU_VARIANT := cortex-a53

#TARGET_BOARD_SUFFIX := _64
#TARGET_USES_64_BIT_BINDER := true
#TARGET_CPU_CORTEX_A53 := true

TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405

# CPU
#TARGET_CPU_CORTEX_A53 := true

# Kernel
BOARD_DTBTOOL_ARGS := -2
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
#TARGET_KERNEL_SOURCE := kernel/asus/msm8916
#TARGET_KERNEL_ARCH := arm64
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
#TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_USES_UNCOMPRESSED_KERNEL := true

TARGET_PREBUILT_KERNEL := device/asus/P024/kernel
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/asus/P024/dt.img

TARGET_KERNEL_CONFIG := P024_defconfig

# Partitions
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE :=     20971520
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
BOARD_SYSTEMIMAGE_PARTITION_SIZE :=   2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12431284736
BOARD_CACHEIMAGE_PARTITION_SIZE :=    209715200
BOARD_PERSISTIMAGE_PARTITION_SIZE :=  33554432
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# TWRP
#RECOVERY_VARIANT := twrp
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/twrp.fstab
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
#TW_TARGET_USES_QCOM_BSP := true
#TW_INCLUDE_CRYPTO := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
# TARGET_RECOVERY_FORCE_PIXEL_FORMAT := "BGR_565"
TWHAVE_SELINUX := true
BOARD_RECOVERY_ALWAYS_WIPES := true
TW_NO_CPU_TEMP := true
TW_NO_SCREEN_TIMEOUT := true

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
# BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_MAX_PARTITIONS := 65
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/
