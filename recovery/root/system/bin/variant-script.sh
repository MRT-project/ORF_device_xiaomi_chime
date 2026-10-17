#!/system/bin/sh
# This script is needed to automatically set device props.

LOG_TAG="variant-script"
log() { echo "$LOG_TAG: $*" 1>&2; }

set_prop() {
    key="$1"
    val="$2"
    if setprop "$key" "$val" 2>/dev/null; then
        return 0
    fi
    if command -v resetprop >/dev/null 2>&1; then
        if resetprop "$key" "$val" 2>/dev/null; then
            return 0
        fi
    fi
    log "WARN: gagal set $key=$val"
    return 1
}

load_variant() {
    set_prop ro.product.marketname       "$1"
    set_prop ro.product.model            "$2"
    set_prop ro.product.product.brand    "$3"
    set_prop ro.product.name             "$4"
    set_prop ro.build.product            "$4"
    set_prop ro.product.device           "$4"
    set_prop ro.product.board            "$4"
    set_prop ro.vendor.product.device    "$4"
}

variant="$(getprop ro.boot.product.hardware.sku)"

if [ -z "$variant" ]; then
    variant="citrus"
fi

case "$variant" in
    citrus)
        load_variant "POCO M3" "M2010J19CG" "POCO" "citrus"
        ;;
    lime)
        load_variant "Redmi 9T" "M2010J19SG" "Redmi" "lime"
        ;;
    lemon)
        load_variant "Redmi 9T NFC" "M2010J19SY" "Redmi" "lemon"
        ;;
    pomelo)
        load_variant "Redmi Note 9 4G" "M2010J19SL" "Redmi" "pomelo"
        ;;
    *)
        load_variant "POCO M3" "M2010J19CG" "POCO" "citrus"
        ;;
esac

exit 0
