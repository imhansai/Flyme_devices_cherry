#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 14172160 54aabf8e7e0df74e31de1aff1898049dc8883066 10057728 1cbccca7c252665d33fc880ab038fcb2f4398f45
fi
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:14172160:54aabf8e7e0df74e31de1aff1898049dc8883066; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:10057728:1cbccca7c252665d33fc880ab038fcb2f4398f45 EMMC:/dev/block/bootdevice/by-name/recovery 54aabf8e7e0df74e31de1aff1898049dc8883066 14172160 1cbccca7c252665d33fc880ab038fcb2f4398f45:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
