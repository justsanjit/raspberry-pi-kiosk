#!/bin/bash

# Stop the blanking out of the screen
xset s noblank
xset s off
xset -dpms

# Remove the mouse pointer when it has been idle for longer than 0.5 mins
# To remove the mouse instantly remove -idle 0.5 from the command
unclutter -idle 0.5 -root &

# Search chromium preferences file and clear out any flags that would make
# warning bar appear.
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/pi/.config/chromium/Default/Pre$
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/pi/.config/chromium/Default/Prefe$

# If chrominum suddenly crashes or closed we do not have to use mouse or
# keyboard to clear the warning message
/usr/bin/chromium-browser --noerrdialogs --disable-infobars --kiosk https://sanjit.me &

# Mimic pressing Ctrl+tab every 15 seconds
while true; do
      xdotool keydown ctrl+Tab; xdotool keyup ctrl+Tab;
      sleep 15
done