# SETUP
pkg install wget -y
# DOWNLOAD BITGAPPS
echo "-Donwloading Bitgapps..."
wget http://download1370.mediafire.com/5eg0g8nv3bbg/ehpvyp79hsytaz9/BiTGApps-arm64-9.0.0-v11.0_signed.zip
# RM GAPPS
mount -o rw,remount /system
cd /system/priv-app
rm -rf GCore GFramework GStore
# MV BITGAPPS TO /sdcard
cd /data/data/com.termux/files/home/MRPEO
mv BiTGApps-arm64-9.0.0-v11.0_signed.zip /sdcard/bitgapps.zip
clear
echo "- Flash bitgapps ở bộ nhớ trong !"
echo "- Sau khi khởi động máy thì :"
echo "     cd MRPEO"
echo "     ./install.sh"
sleep 10
reboot recovery