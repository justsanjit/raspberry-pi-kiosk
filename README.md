# Install
I found it easier to install the raspbain with Etcher as compare to noobs. First get the ethcer from https:/etcher.com and get the latest release of raspbian os https://downloads.raspberrypi.org/raspbian_latest

# HDMI Setup
Pi outputs realtively week signals. Some HDMI devices may not recognize the PI. To make sure it works for every HDMI device, Open the config.txt file from boot.

Add the following configurations
```
# To make sure pi belives monitor is there
hdmi_force_hotplug=1

# Signal boost
config_hdmi_boost=4

```

Install the micro SD into the pi and boot it up.



# Raspberry pi kiosk using chromium

### How to setup
1. Place kiosk.sh any where on the system
2. Replace `https://sanjit.me` in kiosk.sh with the link you like to open
3. If you want to open more than one tab just add multiple links in there like
  `https://sanjit.me https://instagram.com/sanjitkung`
4. Copy kiosk.service into `/lib/systemd/system/` directory
5. Replace `/home/pi/kiosk.sh` in kiosk.service with to the path to your kiosk.sh file
6. Enable the service by typing `sudo systemctl enable kiosk.service` in terminal
7. Either restart the computer or start the service manually using `sudo systemctl start kiosk.service` command from the terminal
