mkdir ~/.config/awesome/
cd ~/.config/awesome/
git clone https://github.com/streetturtle/awesome-wm-widgets.git

cp dotfiles/awesome/rc.lua ~/.config/awesome/rc.lua
cp -r /usr/share/awesome/themes ~/.config/awesome/
cp dotfiles/alacritty.yml ~/.config/

mkdir -p ~/.config/nvim/
cp init.vim ~/.config/nvim/
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim  --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
