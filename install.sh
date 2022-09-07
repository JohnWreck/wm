#!/usr/bin/env bash

package=(

#akmod-nvidia
#alttab
#amd64-microcode
#bluez-tools
#brightnessctl
#bsdmainutils
#cups
#dkms
#firefox
#fonts-firacode
#i3-gaps
#network-manager-gnome
#network-manager-openvpn-gnome
#pipewire
#pipewire-alsa
#pipewire-gstreamer
#pipewire-pulseaudio
#pipewire-utils
#remmina
#remmina-plugin-rdp
#rfkill
#subliminal
#wavemon
alacritty
arandr
bc
bmon
bspwm
calcurse
cifs-utils
cmus
curl
fedora-workstation-repositories
feh
file-roller
fira-code-fonts.noarch
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
gpick
grc
htop
iftop
iotop
iperf3
iptraf-ng
kitty
lm_sensors
lxappearance
mpv
ncdu
neovim
net-tools
nethogs
nmap
nnn
numlockx
p7zip
papirus-icon-theme
picom
playerctl
polybar
pop-gtk2-theme
rofi
rsync
simple-mtpfs
speedtest-cli
sxhkd
sxiv
syncthing
thunar
thunderbird
transmission
whois
wireshark
xinput
xset
xsetroot
zathura
zathura-plugins-all
)

##RPMFusion setup free/nonfree
dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

dnf update
dnf install ${package[*]}

## Fedora workstation repos, enable Google Chrome
dnf config-manager --set-enabled google-chrome

