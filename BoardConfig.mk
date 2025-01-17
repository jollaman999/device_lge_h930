#
# Copyright (C) 2018 The LineageOS Project
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

DEVICE_PATH := device/lge/h930

# inherit from common v30
-include device/lge/joan-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := v30,joan,h930

TARGET_PREBUILT_KERNEL := device/lge/h930/prebuilt-kernel/Image.gz-dtb
PRODUCT_COPY_FILES += \
	$(TARGET_PREBUILT_KERNEL):kernel

# inherit from the proprietary version
-include vendor/lge/h930/BoardConfigVendor.mk
