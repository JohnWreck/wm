#!/usr/bin/env bash

package=(

arandr
bspwm
calcurse
cifs-utils
curl
fedora-workstation-repositories
feh
file-roller
fira-code-fonts.noarch
firefox
flameshot
fontawesome5-fonts-all.noarch
git
google-carlito-fonts.noarch
google-droid-sans-fonts.noarch
google-noto-cjk-fonts-common.noarch
google-noto-emoji-color-fonts.noarch
google-noto-fonts-common.noarch
google-noto-sans-cjk-ttc-fonts.noarch
google-noto-sans-gurmukhi-fonts.noarch
google-noto-sans-sinhala-vf-fonts.noarch
kitty
lm_sensors
lxappearance
neovim
nnn
numlockx
p7zip
papirus-icon-theme
picom
playerctl
polybar
pop-gtk2-theme
rofi
simple-mtpfs
sxhkd
sxiv
thunar
xinput
xset
xsetroot
zathura
zathura-plugins-all
)

##RPMFusion setup free/nonfree
dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
            https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

dnf update
dnf install ${package[*]}

