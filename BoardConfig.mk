# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := msm8998

# Platform
TARGET_BOARD_PLATFORM := msm8998
TARGET_BOARD_PLATFORM_GPU := qcom-adreno540

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 
BOARD_KERNEL_CMDLINE += earlycon=msm_serial_dm,0xc1b0000 androidboot.hardware=qcom 
BOARD_KERNEL_CMDLINE += user_debug=31 msm_rtb.filter=0x237 ehci-hcd.park=3 
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1 sched_enable_hmp=1 sched_enable_power_aware=1 
BOARD_KERNEL_CMDLINE += service_locator.enable=1 swiotlb=2048 androidboot.configfs=true 
BOARD_KERNEL_CMDLINE += androidboot.usbcontroller=a800000.dwc3
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000

BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_ARCH := arm64
#TARGET_KERNEL_CONFIG := ze520kl-userdebug_defconfig
TARGET_PREBUILT_KERNEL := device/asus/Z01G/kernel

TARGET_LDPRELOAD := libNimsWrap.so

# Crypto
TW_INCLUDE_CRYPTO := true
TARGET_HW_DISK_ENCRYPTION := true

# Recovery
RECOVERY_VARIANT := twrp
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Partitions
BOARD_SUPPRESS_SECURE_ERASE := true

# Keystore
TARGET_PROVIDES_KEYMASTER := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# TWRP-Specific
TW_THEME := portrait_hdpi
TW_NO_EXFAT_FUSE := true
TW_INCLUDE_NTFS_3G := true
TW_EXTRA_LANGUAGES := true
RECOVERY_SDCARD_ON_DATA := true
#TW_TARGET_USES_QCOM_BSP := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_EXCLUDE_SUPERSU := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_NO_SCREEN_BLANK := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INPUT_BLACKLIST := "hbtp_vm"

# original path was /sys/devices/soc/1a00000.qcom,mdss_mdp/1a00000.qcom,mdss_mdp:qcom,mdss_fb_primary/leds/lcd-backlight/brightness
TW_BRIGHTNESS_PATH := "/sys/devices/soc/1a00000.qcom\x2mdss_mdp/1a00000.qcom\x2mdss_mdp:qcom\x2mdss_fb_primary/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255

TARGET_RECOVERY_DEVICE_MODULES := \
    libbinder \
    libgui \
    libui \
    qseecomd

TW_RECOVERY_ADDITIONAL_RELINK_FILES := \
    $(OUT)/system/lib64/libbinder.so \
    $(OUT)/system/lib64/libgui.so \
    $(OUT)/system/lib64/libui.so \
    $(OUT)/system/bin/qseecomd

TARGET_UNIFIED_DEVICE := true
TARGET_SYSTEM_PROP := device/asus/Z01G/system.prop
