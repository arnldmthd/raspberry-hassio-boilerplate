# Prerequisites
1. Download ubuntu
2. Flash MicroSD with https://www.techradar.com/how-to/how-to-install-ubuntu-on-the-raspberry-pi
3. Enable SSH by placing a file named “ssh” (without any extension) into the boot partition root of the SD card
4. Safely remove MicroSD card and place it into Raspberry
5. Connect Raspberry and your home router with cable
6. Start Raspberry, red led colors are fine. 
6. Go to your router's admin panel (eg. http://192.168.1.1/), find device in DHCP list and reserve static IP address for your device.
7. Place IP into /*remote_ip file
8. Use ./remote-connect.sh (default password:ubuntu) to connect your Raspberry
9. Change password per request and exit from ssh connection by exit
10. Create SSH key on your local machine
11. Add your SSH public key to Raspbery by ./add-ssh-key.sh
12. Test connection with ./remote-connect.sh (should not ask password)
13. add your WLAN ssid and password into file /*remote_ip (1st line sid (only), 2nd line password (only))
14. Run ./remote-init.sh which pushed /project files into Raspberry. It also installs Docker, IP tools and sets up WLAN.
15. In section 13 you got WLAN IP address and you can place into /*remote_ip
16. Disconnect Raspeberry ethernet cable
17. Run project in Raspberry by ./remote-start.sh


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
