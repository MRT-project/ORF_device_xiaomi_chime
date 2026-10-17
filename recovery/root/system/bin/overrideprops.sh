#!/system/bin/sh

if ! command -v resetprop >/dev/null 2>&1; then
    exit 0
fi

resetprop ro.build.date.utc             0000000000
resetprop ro.system.build.date.utc      0000000000
resetprop ro.system_ext.build.date.utc  0000000000
resetprop ro.vendor.build.date.utc      0000000000
resetprop ro.odm.build.date.utc         0000000000
resetprop ro.product.build.date.utc     0000000000

exit 0
