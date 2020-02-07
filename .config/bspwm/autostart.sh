#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#Find out your monitor name with xrandr or arandr (save and you get this line)
#xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
#xrandr --output DP2 --primary --mode 1920x1080 --rate 60.00 --output LVDS1 --off &
#xrandr --output LVDS1 --mode 1366x768 --output DP3 --mode 1920x1080 --right-of LVDS1
#xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off

$HOME/.config/polybar/launch.sh &

#change your keyboard if you need it
#setxkbmap -layout be

#Some ways to set your wallpaper besides variety or nitrogen
feh --bg-scale ~/.config/bspwm/wall.png &
#feh --randomize --bg-fill ~/Képek/*
#feh --randomize --bg-fill ~/Dropbox/Apps/Desktoppr/*

xsetroot -cursor_name left_ptr &
sxhkd &

#conky -c $HOME/.config/bspwm/system-overview &
run variety &
run nm-applet &
run pamac-tray &
run xfce4-power-manager &
run redshift-gtk &
run remmina -i &
numlockx on &
blueberry-tray &
compton --config $HOME/.config/bspwm/compton.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
setxkbmap us,ru ,winkeys grp:caps_toggle grp_led:caps &
run flameshot &
run python /home/efremov/Dev/kle-heat/inputlistener.py -o /home/efremov/Dev/keyStatData/.keylog.csv &
run xautolock -time 10 -locker $HOME/.config/bspwm/scripts/blurlock &
# run code &
# run chromium &
#run thunar &
#run dropbox &
#run insync start &
#run discord &
#run spotify &
#run atom &
