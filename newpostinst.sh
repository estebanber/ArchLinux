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

#YAY (AUR)
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay nerd-fonts-complete
yay cava
#Servicios
systemctl enable NetworkManager

#Setear fish como shell
chsh -l
chsh -s /usr/bin/fish

alias ll="exa --icons -l"
alias ls="exa --icons"



sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

ln -s ~/proyectos/Archlinux/dotfiles/awesome/ ~/.config/
ln -s ~/proyectos/Archlinux/dotfiles/nvim/ ~/.config/
