#!/bin/sh
# /etc/X11/Xsession
export PATH=$PATH:$HOME/bin/
xset b off
export LC_CTYPE=en_US.UTF-8
# Remove Gnome input-method crap
# export GTK_IM_MODULE=xim
setxkbmap -layout us,us -variant ,intl -option grp:shifts_toggle
xmodmap .xmodmap
xsetroot -solid "#7291a4" # "#338CB4"
xsetroot -cursor_name left_ptr
xset dpms 500 1000 2000
xrdb -merge $HOME/.Xresources

xchainkeys &
# unclutter -idle 1 &
xautolock -time 12 -locker slock -corners 000- &

while true
do
    VOL=$(amixer get Master | tail -1 | sed 's/.*\[\([0-9]*%\)\].*/\1/')
    LOCALTIME=$(date +"%a %d %b %H:%M")
    BAT="$(acpitool -b | awk '{ print $4 " " $5 }' | tr -d ',')"
    xsetroot -name "    $BAT  $VOL  $LOCALTIME "
    sleep 20s
done &

xset s 600 600
xset r rate 300 200
# xbindkeys &
systemctl --user start clipmenud
st -f "Inconsolata-16" -e tmux -u -2 new-session -A -s main &
exec ~/bin/startdwm.sh
