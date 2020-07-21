#!/bin/bash

install_pkg(){

pacman -Suy \
i3lock-fancy \
xss-lock \
picom \
gxkb \
feh \
devmon \
network-manager-applet \
xorg-xbacklight \
notification-daemon \
lightdm-webkit2-greeter \
moc \
ranger \
tty-clock \
gnome-screenshot \
unclutter \
volumeicon \
rofi \
udisks2 \
git
}

install_aur_pkg(){
mkdir aur
cd aur
git clone https://aur.archlinux.org/tty-clock.git
git clone https://aur.archlinux.org/i3lock-fancy-git.git

cd tty-clock
makepkg -i
cd ../i3lock-fancy-git
makepkg -i
cd ../../
}

copy_source(){
cp -R .* ~/
}

install_pkg
install_aur_pkg
copy_source

