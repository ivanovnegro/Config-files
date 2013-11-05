#!/bin/sh

# power management
xfce4-power-manager &
 
# wallpaper
nitrogen --restore &

# thunar file manager daemon
thunar --daemon &

# screensaver
xscreensaver -no-splash &

# rxvt-unicode daemon
urxvtd -q -o -f 

# dropbox
dropbox start -i

# xfce options
xconfd

# keybindings
xbindkeys

# screen settings
xset +dpms
xset s 10800

exec ck-launch-session dbus-launch --sh-syntax --exit-with-session evilwm 


