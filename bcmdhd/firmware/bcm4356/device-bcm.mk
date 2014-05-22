#
# Copyright (C) 2008 The Android Open Source Project
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

########################
-include hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk

ifeq ($(strip $(WIFI_BUS)),SDIO)
BCM_FW_SRC_FILE_STA := fw_bcm4356_sdio.bin
BCM_FW_SRC_FILE_AP  := fw_bcm4356_ap_sdio.bin
else
BCM_FW_SRC_FILE_STA := fw_bcm4356_pcie.bin
BCM_FW_SRC_FILE_AP  := fw_bcm4356_ap_pcie.bin
endif

PRODUCT_COPY_FILES += \
    hardware/broadcom/wlan/bcmdhd/firmware/bcm4356/$(BCM_FW_SRC_FILE_STA):system/vendor/firmware/fw_bcmdhd.bin \
    hardware/broadcom/wlan/bcmdhd/firmware/bcm4356/$(BCM_FW_SRC_FILE_AP):system/vendor/firmware/fw_bcmdhd_apsta.bin
########################
