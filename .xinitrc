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

xmodmap ~/.Xmodmap
xrdb -merge ~/.Xdefaults
#VBoxClient-all &

export LANG=zh_TW.UTF-8

export XIM=fcitx
export XMODIFIERS="@im=fcitx"
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
fcitx

numlockx &

urxvtd -q -o -f

xrandr --output HDMI1 --auto --output VGA1 --auto  --right-of HDMI1
exec awesome >> ~/.cache/awesome_stdout 2>> ~/.cache/awesome_stderr
