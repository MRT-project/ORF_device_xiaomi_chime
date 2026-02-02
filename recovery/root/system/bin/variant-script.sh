#!/system/bin/sh
# This script is needed to automatically set device props.

load_citrus()
{
    resetprop "ro.product.marketname" "POCO M3"
    resetprop "ro.product.model" "M2010J19CG"
    resetprop "ro.product.product.brand" "POCO"
    resetprop "ro.product.name" "citrus"
    resetprop "ro.build.product" "citrus"
    resetprop "ro.product.device" "citrus"
    resetprop "ro.vendor.product.device" "citrus"
}

load_lime()
{
    resetprop "ro.product.marketname" "Redmi 9T"
    resetprop "ro.product.model" "M2010J19SG"
    resetprop "ro.product.product.brand" "Redmi"
    resetprop "ro.product.name" "lime"
    resetprop "ro.build.product" "lime"
    resetprop "ro.product.device" "lime"
    resetprop "ro.vendor.product.device" "lime"
}

load_lemon()
{
    resetprop "ro.product.marketname" "Redmi 9T NFC"
    resetprop "ro.product.model" "M2010J19SY"
    resetprop "ro.product.product.brand" "Redmi"
    resetprop "ro.product.name" "lemon"
    resetprop "ro.build.product" "lemon"
    resetprop "ro.product.device" "lemon"
    resetprop "ro.vendor.product.device" "lemon"
}

load_pomelo()
{
    resetprop "ro.product.marketname" "Redmi Note 9 4G"
    resetprop "ro.product.model" "M2010J19SL"
    resetprop "ro.product.product.brand" "Redmi"
    resetprop "ro.product.name" "pomelo"
    resetprop "ro.build.product" "pomelo"
    resetprop "ro.product.device" "pomelo"
    resetprop "ro.vendor.product.device" "pomelo"
}

variant=$(getprop ro.boot.product.hardware.sku)
echo $variant

case $variant in
    "citrus")
        load_citrus
        ;;
    "lime")
        load_lime
        ;;
    "lemon")
        load_lemon
        ;;
    "pomelo")
	load_pomelo
	;;
    *)
	load_citrus
	;;
esac

exit 0
