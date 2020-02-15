
ssid=$(cat wlan | awk 'NR==1')
wlanPassword=$(cat wlan | awk 'NR==2')

echo "
🧞‍♂  sudo apt-get install wireless-tools -y
"
sudo apt-get install wireless-tools -y

echo "
🧞‍♂  sudo apt-get install net-tools
"
sudo apt-get install net-tools -y

echo "
🧞‍♂  sudo apt install network-manager
"
sudo apt install network-manager -y


echo "[Unit]
Description=Connect to WLAN

[Service]
ExecStart=/usr/bin/nmcli device wifi connect 

[Install]
WantedBy=multi-user.target
" | sudo tee /etc/systemd/system/myWifi.service

echo "
🧞‍♂  systemctl enable myWifi
"
systemctl enable myWifi

echo "  
🧞‍♂  nmcli d wifi connect $ssid password $wlanPassword
"
nmcli d wifi connect $ssid password $wlanPassword

echo "  
🧞‍♂  nmcli d wifi list
"
nmcli d wifi list

echo "  
🧞‍♂  ifconfig wlan0
"
ifconfig wlan0
