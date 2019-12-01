# INSTALL GOOGLE DIALER
if [ -d /data/app/com.google.android.dialer* ]; then
  cd /system/priv-app/Dialer
  rm -rf *
  cd ~
  mv /data/app/com.google.android.dialer*/base.apk /system/priv-app/Dialer/Dialer.apk
  rm -rf /data/app/com.google.android.dialer*
  chmod 644 /system/priv-app/Dialer/Dialer.apk
  reboot
else
  echo " - Tải Google Dialer trước khi chạy !"
fi;