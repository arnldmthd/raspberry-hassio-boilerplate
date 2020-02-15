
ssid=$(head -n 1 *wlan)
wlanPassword=$(head -n 2 *wlan)

echo "🧞‍♂  sudo apt-get install wireless-tools -y"
sudo apt-get install wireless-tools -y

echo "🧞‍♂  sudo apt-get install net-tools"
sudo apt-get install net-tools

echo "🧞‍♂  sudo wpa_passphrase $ssid $wlanPassword | sudo tee -a /etc/wpa_supplicant/wpa_supplicant.conf"
sudo wpa_passphrase $ssid $wlanPassword | sudo tee -a /etc/wpa_supplicant/wpa_supplicant.conf

sudo ip link set wlan0 down
sudo ip link set wlan0 up
sudo wpa_supplicant -B -iwlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf -Dnl80211,wext > /dev/null
sudo dhclient wlan0

echo "🧞‍♂  ifconfig wlan0"
ifconfig wlan0