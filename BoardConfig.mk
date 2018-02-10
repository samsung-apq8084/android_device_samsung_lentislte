# Copyright (C) 2017 The LineageOS Project
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

# inherit from common lentis
-include device/samsung/lentis-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := lentislteskt,lentisltektt,lentisltelgt,lentislte

LENTISLTE_PATH := device/samsung/lentislte

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LENTISLTE_PATH)/bluetooth  $(DEVICE_PATH)/bluetooth

# Kernel
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02600000 --tags_offset 0x02400000 --second_offset 0x00f00000
TARGET_KERNEL_VARIANT_CONFIG := apq8084_sec_lentislte_skt_defconfig

# Init
TARGET_INIT_VENDOR_LIB := libinit_apq8084
TARGET_LIBINIT_APQ8084_DEFINES_FILE := device/samsung/lentislte/init/init_lentislte.cpp

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2537553920
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_USERDATAIMAGE_PARTITION_SIZE := 28318846464

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# inherit from the proprietary version
-include vendor/samsung/lentislte/BoardConfigVendor.mk
