sudo ip link set wlan0 down
sudo ip link set wlan0 up
sudo wpa_supplicant -B -iwlan0 -c /etc/wpa_supplicant.conf -Dnl80211,wext
sudo dhclient wlan0