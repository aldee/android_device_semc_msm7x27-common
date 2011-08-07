# Copyright (C) 2011 The CyanogenMod Project
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

TARGET_BOARD_PLATFORM := msm7k
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp

JS_ENGINE := v8

BOARD_USES_GENERIC_AUDIO := false
TARGET_PROVIDES_LIBAUDIO := true
#TARGET_PROVIDES_LIBRIL := false

BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WLAN_DEVICE := wl1271
BOARD_SOFTAP_DEVICE := wl1271
WPA_SUPPLICANT_VERSION := VER_0_6_X
WIFI_DRIVER_MODULE_PATH := /system/lib/modules/tiwlan_drv.ko
WIFI_DRIVER_MODULE_NAME := tiwlan_drv
WIFI_FIRMWARE_LOADER := wlan_loader
WIFI_EXT_MODULE_PATH := /system/lib/modules/sdio.ko
WIFI_EXT_MODULE_NAME := sdio

BOARD_HAVE_BLUETOOTH := true
#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
#BOARD_USES_QCOM_LIBRPC := true
#BOARD_USE_QCOM_PMEM := true

BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 1240
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := delta
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

BOARD_EGL_CFG := device/semc/msm7x27-common/prebuilt/egl.cfg
BOARD_NO_RGBX_8888 := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

TARGET_USES_OLD_LIBSENSORS_HAL:=true

BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun

BOARD_CUSTOM_BOOTIMG_MK := device/semc/msm7x27-common/custombootimg.mk
TARGET_RECOVERY_PRE_COMMAND := "touch /cache/recovery/boot;sync;"
BOARD_HAS_BOOT_RECOVERY := true
BOARD_HAS_SMALL_RECOVERY := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USES_RECOVERY_CHARGEMODE := false
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_LDPI_RECOVERY := true
BOARD_CUSTOM_RECOVERY_FILES := ../../device/semc/msm7x27-common/recovery/extendedcommands.c \
				../../device/semc/msm7x27-common/recovery/recovery.c \
				../../device/semc/msm7x27-common/recovery/roots.c

#install.c needs to be fixed first
#BOARD_CUSTOM_UPDATER_FILES := ../../../device/semc/msm7x27-common/recovery/install.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/semc/msm7x27-common/recovery/recovery_ui.c


BOARD_KERNEL_CMDLINE := console=null
BOARD_KERNEL_BASE := 0x00200000

BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p1

# A custom ota package maker for a device without a boot partition
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/semc/msm7x27-common/releasetools/semc_ota_from_target_files

# Vibrator
BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/semc/msm7x27-common/vibrator.c
