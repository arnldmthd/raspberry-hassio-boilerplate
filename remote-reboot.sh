#!/bin/bash
value=$(<*remote_ip)

## Ubuntu to as root

echo "
🧞‍♂  ssh ubuntu@$value sudo reboot
"
ssh ubuntu@$value sudo reboot
