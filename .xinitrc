#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# keyboard shortcuts for bspwm
sxhkd -f 100 &

# desktop wallpaper
sh ~/.fehbg &

# hide x11 cursor
unclutter &

# urxvt daemon
urxvtd -q -f -o &

# keybinds
xbindkeys

# dropbox
/usr/bin/dropbox &

# mpd
[ ! -s ~/.config/mpd/pid ] && mpd

# window manager
exec bspwm
