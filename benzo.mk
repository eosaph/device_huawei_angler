# Release name
PRODUCT_RELEASE_NAME := Nexus6P

# Inherit device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/benzo/config/common64.mk)
$(call inherit-product, vendor/benzo/config/common_full_phone.mk)

# CM Overlay
DEVICE_PACKAGE_OVERLAYS += device/moto/shamu/overlay-cm

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := angler
PRODUCT_NAME := benzo_angler
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6P
PRODUCT_MANUFACTURER := Huawei
TARGET_VENDOR := huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:6.0/MDA89D/2294819:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 6.0 MDA89D 2294819 release-keys"

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/benzo/prebuilt/common/bootanimations/bootanimation.zip:system/media/bootanimation.zip

