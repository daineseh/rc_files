#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice







xrdb ~/.Xresources

export LANG=zh_TW.UTF-8

export XIM=ibus	
export XMODIFIERS="@im=ibus"
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
ibus-daemon -d -x -r &

urxvtd -q -o -f

exec awesome >> ~/.cache/awesome_stdout 2>> ~/.cache/awesome_stderr
