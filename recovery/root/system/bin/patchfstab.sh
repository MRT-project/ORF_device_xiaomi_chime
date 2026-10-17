#!/system/bin/sh
#
# This script is needed to support wrappedkey and fbe v2
# Version: 1.3
# Date : 2023/01/19
# Author : AnGgIt86 M•R•T Project™
#

reclog=/tmp/recovery.log
tmpv=/tmp/vendor_fstab
fstabd=$tmpv/etc/fstab.default
fstabq=$tmpv/etc/fstab.qcom
fstabr=/system/etc/recovery.fstab
fstabrbak=/system/etc/recovery.fstab.bak

send_log() {
	echo "I:$1" >> $reclog
}

finish() {
	sleep 1
	umount $tmpv || true
	rmdir $tmpv
	exit 0
}

patch_fstab() {
	mkdir -p $tmpv
	mount -o ro -t auto /dev/block/mapper/vendor $tmpv || true

	if [ ! -f $fstabrbak ]; then
		send_log "ERROR: $fstabrbak not found, skip patch"
		finish
	fi

	found=0
	for i in $fstabq $fstabd; do
		if [ -f $i ]; then
			found=1
			send_log "Find $i"
			if [ -n "$(grep -m1 '/userdata' $i | grep ':v2')" ]; then
				send_log "ROM FBE v2 support..."
				finish
			else
				send_log "Change FBE v1 support..."
				cp $fstabrbak $fstabr || {
					send_log "ERROR: failed to copy $fstabrbak"
					finish
				}
				if [ -n "$(grep -m1 '/userdata' $i | grep wrappedkey)" ]; then
					send_log "...and enabled wrappedkey."
					sed -i -e "s/formattable/formattable,wrappedkey/g" $fstabr
				fi
				finish
			fi
		fi
	done

	if [ "$found" = "0" ]; then
		send_log "WARN: fstab vendor not found"
	fi
	finish
}

patch_fstab

exit 0
