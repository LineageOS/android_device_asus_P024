# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/asus/P024/device.mk)

ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

# Boot animation
TARGET_SCREEN_WIDTH := 800
TARGET_SCREEN_HEIGHT := 1280


# Release name. Device identifier. This must come after all inclusions
PRODUCT_DEVICE := P024
PRODUCT_BRAND := asus
PRODUCT_MODEL := P024
PRODUCT_MANUFACTURER := asus
PRODUCT_NAME := cm_P024


