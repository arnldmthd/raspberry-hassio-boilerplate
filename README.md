# Prerequisites
1. Download ubuntu
2. Flash MicroSD with https://www.techradar.com/how-to/how-to-install-ubuntu-on-the-raspberry-pi
3. Enable SSH by placing a file named `ssh` (without any extension) into the boot partition root of the SD card
4. Safely remove MicroSD card and place it into Raspberry
5. Connect Raspberry into your home router with ethernet cable
6. Start Raspberry, red led colors are fine. 
7. Go to your router's admin panel (eg. http://192.168.1.1/), find device in DHCP list and reserve static IP address for your device.
8. Place IP into `*remote_ip` file
9. Use `./remote-connect.sh` (default password:ubuntu) to connect your Raspberry
10. Change password per request and exit from ssh connection by exit
11. Create SSH key on your local machine
12. Add your SSH public key to Raspberry by `./add-ssh-key.sh`
13. Test connection with `./remote-connect.sh` (should not ask password)
14. add your WLAN ssid and password into file `*remote_ip` (1st line sid (only), 2nd line password (only))
15. Run `./remote-init.sh` which push project files into Raspberry and installs Docker, IP tools and sets up WLAN.
16. In section 13 you got WLAN IP address and you can place into `*remote_ip`
17. Go to your router's admin panel (eg. http://192.168.1.1/), find device WLAN address in DHCP list and reserve static IP address for your device's WLAN.
18. Disconnect Raspeberry ethernet cable
19. Run project in Raspberry by `./remote-start.sh`


# Commands

```
# Connect to remote via SSH
./connect

# Adds your local ssh to remote ssh keys so you dont need password
./add-ssh-key.sh

# Deploys Docker containers into remote
./deploy.sh

```


ifconfig wlan0 | sed -e 's/inet\(.*\)  netmask/\1/'
