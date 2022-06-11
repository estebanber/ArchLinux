#!/bin/bash
ln -sf /usr/share/zoneinfo/Asia/Dhaka /etc/localtime
hwclock --systohc
sed -i -e 's/#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/g' /etc/locale.gen
locale-gen
echo 'LANG=es_AR.UTF-8' > /etc/locale.conf

read -p "Enter hostname: " host
echo $host > /etc/hostname
echo '127.0.0.1 localhost
::1 localhost' >> /etc/hosts

pacman -S base base-devel grub bash-completion linux-firmaware dhcpcd wpa_supplicant xorg xorg-xinit awesome sddm picom python nodejs grub thunar xsel xclip golang python-pip python-neovim udisks2 udiskie ntfs-3g htop git fish alacritty firefox pass gnupg tree mariadb librecad neovim fuse hunspell hunspell-es_ar hunspell-en_us mplayer mpv iw kitty gimp moserial libreoffice rust network-manager networ-kmanager-applet --noconfirm
pacman -S --needed gvfs trash-cli pulseaudio-alsa acpi ntectl ifplugd dialog minicom screen gcc git make flex bison gperf python-pip cmake ninja ccache dfu-util
pacman -S ttf-roboto ttf-roboto-mono ttf-jetbrains-mono ttf-dejavu ttf-linux-libertine ttf-nerd-fonts-symbols-mono ttf-opensans ttf-ubuntu-font-family ttf-liberation ttf-joypixels noto-fonts-emoji arc-icon-theme --noconfirm
pacman -S powerline-fonts awesome-terminal-fonts autorandr


sed -i -e 's/# %wheel ALL=(ALL) ALL/%wheel ALL=(ALL) ALL/g' /etc/sudoers

echo 'Set root password'
passwd

read -p "Enter username: " name
useradd -m $name
echo "Set password for $name"
passwd $name

usermod -aG wheel,audio,video,optical,storage,uucp,dialout $name

sudo pacman-key --init
sudo pacman-key --populate archlinux

sudo localectl set-x11-keymap latam pc105

exit 
