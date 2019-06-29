# Raspberry pi kiosk using chromium

### How to setup
1. Place kiosk.sh any where on the system
2. Replace https://sanjit.me with the link you like
3. If you want to open more than one tab just add multiple links in there like https://sanjit.me https://instagram.com/sanjitkung
4. Copy kiosk.service into `/lib/systemd/system/` directory
5. Replace `/home/pi/kiosk.sh` with to your kiosk.sh file
6. Enable the service by typing `sudo systemctl enable kiosk.service` in terminal
7. Either restart the computer or start the service manually using `sudo systemctl start kiosk.service`  command from the terminal