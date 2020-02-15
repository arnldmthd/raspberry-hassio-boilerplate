# Prerequisites
1. Download ubuntu
2. Flash MicroSD with https://www.techradar.com/how-to/how-to-install-ubuntu-on-the-raspberry-pi
3. Enable SSH by placing a file named “ssh” (without any extension) onto the boot partition of the SD card:
4. Move MicroSD card into Raspberry
5. Connect to the router with cable
6. Start Raspberry
6. Go to router panel, find device and reserve static IP address for DHCP device
7. Place ip into raspberry_ip file
8. ./connect.sh (default password:ubuntu)
9. Change password
10. Exit from raspberry
11. Create SSH key on your local machine
12 ./add-ssh-key.sh
13 ./connect.sh (should not ask password)

# Commands

```
# Connect to remote via SSH
./connect

# Adds your local ssh to remote ssh keys so you dont need password
./add-ssh-key.sh

# Deploys Docker containers into remote
./deploy.sh

```
