
# SELinux Policy File Configuration
BOARD_SEPOLICY_DIRS += \
    device/mediatek/sepolicy/basic/non_plat \
    device/mediatek/sepolicy/bsp/non_plat

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/mediatek/sepolicy/basic/plat_private \
    device/mediatek/sepolicy/bsp/plat_private

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/mediatek/sepolicy/basic/plat_public \
    device/mediatek/sepolicy/bsp/plat_public
