#!/bin/sh

dex --autostart --environment dwm

# start battery warning
~/bin/i3-battery-popup -t 1m &

# xss-lock grabs a logind suspend inhibit lock and will use i3lock to lock the
# screen before suspend. Use loginctl lock-session to lock your screen.
xset dpms 600 s off
xss-lock -l -- i3lock -f -c 285577 -e -n &

slstatus &

sxhkd &

sleep 2

ibus-daemon -r -x -R -d

# compositor
picom -b

#set background
feh --no-fehbg --bg-fill ~/Pictures/Backgrounds/Background-maui-vyhled.jpg
