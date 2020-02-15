#!/bin/bash
value=$(<raspberry_ip)

echo "🧞‍♂  ssh ubuntu@$value sudo usermod -aG sudo ubuntu"
ssh ubuntu@$value sudo usermod -aG sudo ubuntu

echo "🧞‍♂  ssh ubuntu@$value sudo sh -c 'wpa_passphrase Telia2.4GHz-ED51B8 ASf6cK4A2dce4d7e'"
ssh ubuntu@$value sudo sh -c 'wpa_passphrase Telia2.4GHz-ED51B8 ASf6cK4A2dce4d7e > /etc/wpa_supplicant.conf'
echo "🧞‍♂  ssh ubuntu@$value cd apps && sudo ./restart-wlan.sh"
ssh ubuntu@$value 'cd apps && sudo ./restart-wlan.sh'
