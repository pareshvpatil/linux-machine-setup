#!/bin/bash
W=1920
H=1200
O=VIRTUAL1
if [ "$1" == "create" ]; then
  gtf $W $H 60 | sed '3q;d' | sed 's/Modeline//g' | xargs xrandr --newmode
  # sed: get third line, delete 'Modeline', get first word, remove first and last characters
  gtf $W $H 60 | sed '3q;d' | sed 's/Modeline//g' | awk '{print $1;}' | sed 's/^.\(.*\).$/\1/' | xargs xrandr --addmode $O
  gtf $W $H 60 | sed '3q;d' | sed 's/Modeline//g' | awk '{print $1;}' | sed 's/^.\(.*\).$/\1/' | xargs xrandr --output $O --left-of LVDS1 --mode
elif [ "$1" == "on" ]; then
  #x11vnc -clip ${W}x${H}+0+0
  # For use in Wi-Fi LAN.
  x11vnc -clip ${W}x${H}+0+0 #**WARNING** Unencrypted stream. VNC accessible without password through port 5900 in all internet interfaces.
else
  echo "missing argument: [create | on]"
fi

