
# SELinux Policy File Configuration
BOARD_SEPOLICY_DIRS += \
    device/mediatek/sepolicy/basic/non_plat \
    device/mediatek/sepolicy/bsp/non_plat \
    device/mediatek/sepolicy/modem

ifneq ($(call math_lt,$(PRODUCT_SHIPPING_API_LEVEL),28),)
BOARD_SEPOLICY_DIRS += $(wildcard device/mediatek/sepolicy/bsp/ota_upgrade)
endif

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/mediatek/sepolicy/basic/plat_private \
    device/mediatek/sepolicy/bsp/plat_private

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/mediatek/sepolicy/basic/plat_public \
    device/mediatek/sepolicy/bsp/plat_public

# MTK Debug Rules Configuration
ifeq ($(strip $(HAVE_MTK_DEBUG_SEPOLICY)), yes)
BOARD_SEPOLICY_DIRS += \
    device/mediatek/sepolicy/basic/debug/non_plat \
    device/mediatek/sepolicy/bsp/debug/non_plat

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/mediatek/sepolicy/basic/debug/plat_public \
    device/mediatek/sepolicy/bsp/debug/plat_public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/mediatek/sepolicy/basic/debug/plat_private \
    device/mediatek/sepolicy/bsp/debug/plat_private
endif
