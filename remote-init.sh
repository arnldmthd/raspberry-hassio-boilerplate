#!/bin/bash
value=$(<*remote_ip)

## Ubuntu to as root

echo "
🧞‍♂  ssh ubuntu@$value sudo usermod -aG sudo ubuntu
"
ssh ubuntu@$value sudo usermod -aG sudo ubuntu

## Copy Project files

echo "
🧞‍♂  ssh ubuntu@$value  '(rm -rf project && mkdir -p project)'
"
ssh ubuntu@$value '(rm -rf project && mkdir -p project)'

echo "
🧞‍  rsync -avz -e ssh project/ ubuntu@$value:/home/ubuntu/project/
"
rsync -avz -e ssh project/ ubuntu@$value:/home/ubuntu/project/

## Docker Installation

echo "
🧞‍♂  ssh ubuntu@$value cd project && ./install-docker.sh)
"
ssh ubuntu@$value ./project/install-docker.sh

echo "
🧞‍♂  ssh ubuntu@$value sudo usermod -aG sudo ubuntu
"
ssh ubuntu@$value sudo usermod -aG sudo ubuntu

## Wlan Setup

echo "
🧞‍  rsync -avz -e ssh *wlan ubuntu@$value:/home/ubuntu/project/*wlan
"
rsync -avz -e ssh ./*wlan ubuntu@$value:/home/ubuntu/project/wlan

echo "
🧞‍♂  ssh ubuntu@$value cd project && sudo ./restart-wlan.sh
"
ssh ubuntu@$value 'cd project && sudo ./restart-wlan.sh'
