# Release name
PRODUCT_RELEASE_NAME := jalebi

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/pb/config/common.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Encryption
PRODUCT_PACKAGES += \
    libcryptfs_hw

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
      ro.hardware.keystore=msm8916

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/dt.img:dt.img \
    $(LOCAL_PATH)/prebuilt/kernel:kernel \

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_jalebi
PRODUCT_DEVICE := jalebi
PRODUCT_BRAND := YU
PRODUCT_MODEL := YU4711
PRODUCT_MANUFACTURER := YU
