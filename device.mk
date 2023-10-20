#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/r3q

# Shipping API
PRODUCT_SHIPPING_API_LEVEL := 28

# Audio
PRODUCT_PACKAGES += \
   android.hardware.audio.service \
   android.hardware.audio@6.0-impl:32 \
   android.hardware.audio.effect@6.0-impl:32 \
   android.hardware.bluetooth.audio-impl:32 \
   android.hardware.soundtrigger@2.3-impl:32

# Audio HW module
PRODUCT_PACKAGES += \
   audio.bluetooth.default \
   audio.r_submix.default \
   audio.usb.default

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_SOONG_NAMESPACES += \
     $(DEVICE_PATH)

# Rootdir
PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.qcom.class_core.sh \
    init.qcom.early_boot.sh \
    init.qcom.post_boot.sh \
    init.qcom.sh \
    init.qcom.usb.sh

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.r3q.rc \
    init.samsung.display.rc \
    init.samsung.rc \
    init.target.rc
