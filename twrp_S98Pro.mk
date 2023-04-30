#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Configure base.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Configure full base
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from S98Pro device
$(call inherit-product, device/doogee/S98Pro/device.mk)

PRODUCT_DEVICE := S98Pro
PRODUCT_NAME := twrp_S98Pro
PRODUCT_BRAND := DOOGEE
PRODUCT_MODEL := S98Pro
PRODUCT_MANUFACTURER := doogee
