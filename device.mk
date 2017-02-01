# Copyright (C) 2017, The LineageOS Project
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

# Inherit from jf-common
$(call inherit-product, device/samsung/jf-common/jf-common.mk)

# Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/jf-gsm-common/jf-gsm-common-vendor.mk)
$(call inherit-product-if-exists, vendor/samsung/jfvelte/jfvelte-vendor.mk)

# Audio
PRODUCT_COPY_FILES += \
    device/samsung/jf-common/audio/audio_platform_info_jfvelte.xml:system/etc/audio_platform_info.xml \
    device/samsung/jf-common/audio/mixer_paths_jfvelte:system/etc/mixer_paths.xml

# Device overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/jfvelte/overlay

# Bluetooth
PRODUCT_COPY_FILES += \
    device/samsung/jf-common/bluetooth/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \

# Wifi
PRODUCT_PACKAGES += \
    libwcnss_qmi \
    wcnss_service \
    libQWiFiSoftApCfg \
    libqsap_sdk

PRODUCT_COPY_FILES += \
    device/samsung/jf-common/wcnss/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/samsung/jf-common/wcnss/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/samsung/jf-common/wcnss/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    device/samsung/jf-common/wcnss/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/samsung/jf-common/wcnss/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Permissions
PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml


