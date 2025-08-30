#!/system/bin/sh
# Quick diagnostics for NH-Terminal + Magisk + Kali chroot
echo "== Magisk path =="
magisk --path 2>/dev/null || echo "(magisk not in PATH)"
echo "== Magisk su test =="
MP="$(magisk --path 2>/dev/null)"
[ -n "$MP" ] && "$MP"/magisk su --mount-master -c id || echo "(failed)"
echo "== NH-Terminal kali launcher path =="
echo "/data/data/com.offsec.nhterm/files/usr/bin/kali"
echo "== Kali rootfs =="
ls -ld /data/local/nhsystem/kalifs 2>/dev/null || echo "kalifs missing"
