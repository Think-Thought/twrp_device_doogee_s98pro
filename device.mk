#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# API
PRODUCT_SHIPPING_API_LEVEL := 31

# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    gz \
    lk \
    md1img \
    pi_img \
    preloader_raw \
    scp \
    spmfw \
    sspm \
    tee \
    vbmeta \
    vbmeta_system \
    vbmeta_vendor \
    vendor_boot \
    pl \
    product \
    system \
    vendor
	
PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload
	
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot Control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-service \
    bootctrl.mt6781.recovery

PRODUCT_PACKAGES_DEBUG += \
    bootctrl
	
# MTK PlPath Utils
PRODUCT_PACKAGES += \
    mtk_plpath_utils.recovery
	
# Health Hal
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl.recovery	
