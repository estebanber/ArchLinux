chromium
exa
fzf
bat
rofi
cava
ranger
nitrogen
ncdu
wget
neofetch
pulseaudio
pulseaudio-alsa
pulsemixer
zenity
python-pillow
python-boto3
python-xlsxwriter
python-wheel
docker
ripgrep
transmission-gtk
virt-manager
libvirt
qemu-desktop
aws-cli
ffmpeg
vlc
mpv
gst-plugins-ugly
cups
scrot
libreoffice-still-es
ffmpeg
ffmpeg-codec
onefetch
rofi-pass
rofi-calc


#YAY (AUR)
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

#yay nerd-fonts-complete
yay nerd-fonts-roboto
yay otf-nerd-fonts-fira-code
yay nerd-fonts-roboto-mono
yay tf-nerd-fonts-fira-code
yay cava
yay spotify
yay logseq-bin
yay aws-sam-cli
yay mongodb-compass
yay insomnia
yay qemu-launcher
ysy neovide-git

#Servicios
systemctl enable NetworkManager

#Setear fish como shell
chsh -l
chsh -s /usr/bin/fish

alias ll="exa --icons -l"
alias ls="exa --icons"


sudo gpasswd -a eberna docker
newgrp docker

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

ln -s ~/proyectos/Archlinux/dotfiles/awesome/ ~/.config/
ln -s ~/proyectos/Archlinux/dotfiles/nvim/ ~/.config/
